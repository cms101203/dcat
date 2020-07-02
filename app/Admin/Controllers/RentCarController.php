<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RentCar;
use App\Models\AdminIndustry;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\DriverDetailModel;
use App\Models\RentCarDeductionLogModel;
use App\Models\RentCarModel;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Illuminate\Support\Str;
use Dcat\Admin\Widgets\Table;

class RentCarController extends AdminController
{
    protected $title="租赁管理";
    protected $type = 1;
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RentCar(), function (Grid $grid) {
            $grid->model()->orderBy('id', 'desc');
            $grid->id->sortable();
            $grid->rent_num;
            $grid->client_id->using(ClientDetailModel::dataOptions(['id','client_name']));

            $grid->car_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]));
            $grid->car_id->using(CarsModel::dataOptions(['id','car_num']));
            $grid->rent_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>19]));
            $grid->staff_id->using(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31]));
            $grid->rent_at;
            $grid->rent_day;
            $grid->deposit->responsive(0);
            $grid->rent->responsive(0);
            $grid->oil_volume->responsive(0);
            $grid->redriving->responsive(0);
            $grid->odrive_price->responsive(0);
            $grid->timeout_price->responsive(0);
            $grid->remark->responsive(0);

            $grid->column('rentcarlog','租金记录')->display(function ($item)use ($grid){
                return "<span class='create-form' data-url='rentcarslog/create?id={$this->id}' title='新增租金记录'><i class='fa  fa-cogs'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = RentCarDeductionLogModel::where('rent_id',$this->id)->orderBy('id', 'desc')->get(['rent_money','rent_over','deposit_money','deposit_over','money','next_at','remark'])->toArray();
                if (!empty($bylist)){

                    foreach ($bylist as $k=>$v){
                        $byarr[$k]['rent_money'] = $v['rent_money'] ;
                        $byarr[$k]['rent_over'] = $v['rent_over'] ;
                        $byarr[$k]['deposit_money'] = $v['deposit_money'] ;
                        $byarr[$k]['deposit_over'] = $v['deposit_over'] ;
                        $byarr[$k]['money'] = $v['money'] ;
                        $byarr[$k]['next_at'] = $v['next_at'] ;
                        $byarr[$k]['remark'] = $v['remark'] ;
                    }
                    return new Table(['租金扣除数','租金剩余数','押金扣除数','押金剩余数','单独收取钱数','下次收租时间','备注'],$byarr);
                }

            });
            $grid->column('returncar','还车')->display(function ($item)use($grid){
                return "<a href='/admin/returncars/create?id=".$this->id."'>还车</a>";
            });

            Form::dialog('新增租金记录')
                ->click('.create-form') // 绑定点击按钮
                ->url('rentcarslog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面
            $grid->created_at->responsive(0);
            $grid->updated_at->sortable();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->like('rent_num');
                $filter->equal('client_id')->select(ClientDetailModel::dataOptions(['id','client_name']));
                $filter->ilike('mobile');
                $filter->equal('staff_id')->select(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31]));
                $filter->equal('car_type')->select(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]));
                $filter->equal('car_id')->select(CarsModel::dataOptions(['id','car_num']));
                $filter->day('rent_at')->date();

            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new RentCar(), function (Show $show) {
            $show->id;
            $show->rent_num;
            $show->client_id->using(ClientDetailModel::dataOptions(['id','client_name']));
            $show->car_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]));
            $show->car_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]));
            $show->car_id->using(CarsModel::dataOptions(['id','car_num']));
            $show->rent_type->using(AdminIndustry::dataOptions(['id','title'],['parent_id'=>19]));
            $show->staff_id->using(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31]));

            $show->rent_at;
            $show->rent_day;
            $show->is_long->using([0=>'否',1=>'是']);
            $show->rush_type->using([1=>'天',2=>'月',3=>'年']);
            $show->deduction_num;
            $show->current_mileage;
            $show->deposit;
            $show->rent;
            $show->oil_volume;
            $show->redriving;
            $show->odrive_price;
            $show->timeout_price;
            $show->remark;
            $show->created_at;
            $show->updated_at;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new RentCar(), function (Form $form) {
            $form->display('id');

            $form->select('client_id')->options(ClientDetailModel::dataOptions(['id','client_name']))->required();
            $form->hidden('rent_num')->saving(function ($item)use($form){
                if ($form->isCreating()){
                    $start = "100000";
                    $end = "999999";
                    $idlength = Str::length($form->client_id);
                    $start =Str::limit($start,6-$idlength);
                    $end =Str::limit($end,6-$idlength);
                    return "ZC".date('Ymd').random_int(intval($start), intval($end)).$form->client_id;
                }else{
                    return $item;
                }

            });
            $form->saving(function ($form){
                if ($form->isEditing()){
                    $rent = RentCarModel::where('id',$form->model()->id)->first();
                    if ($rent['staff_id'] !=$form->model()->staff_id){
                        DriverDetailModel::where('id',$form->staff_id)->update(['driver_status'=>0]);

                    }
                    if ($rent['car_id'] != $form->model()->car_id){
                        CarsModel::where('id',$form->car_id)->update(['car_status'=>0]);
                    }
                }
            });
            $form->tel('mobile')->required();


            $form->select('car_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>5]))->load('car_id', '/getcars')->required();
            $form->select('car_id')->required();
            $form->radio('rent_type')->options(AdminIndustry::dataOptions(['id','title'],['parent_id'=>19]))->default(20)->required();
            $form->select('staff_id')->options(DriverDetailModel::dataOptions(['id','name'],['staff_type'=>31]));
            $form->datetime('rent_at')->default(date('Y-m-d H:i:s'));
            $form->radio('timexz','快捷选择预租天数')->options([1=>'一个月',2=>'一年']);
            $form->number('rent_day')->default(1);
            $form->currency('deposit')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('rent')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->radio('is_long','是否长期')->options([0=>'否',1=>'是'])->default(0);
            $form->radio('rush_type','扣款时常')->options([1=>'天',2=>'月',3=>'年'])->default(1);
            $form->currency('deduction_num','扣款数')->symbol("元")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('current_mileage')->symbol("Km")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->text('oil_volume')->default("满格");
            $form->currency('redriving')->symbol("Km")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('odrive_price')->symbol("元/Km")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->currency('timeout_price')->symbol("元/H")->saving(function ($v){
                return empty($v) ? 0 :  str_replace(',','',$v);
            });
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->ignore('timexz');
            $form->saved(function ($form){
                DriverDetailModel::where('id',$form->staff_id)->update(['driver_status'=>1]);
                CarsModel::where('id',$form->car_id)->update(['car_status'=>1]);
                if ($form->isCreating()){
                    if ($form->rent >0){
                        $days = 0;
                        if ($form->rush_type==1){
                            $days = 1;
                        }elseif ($form->rush_type==2){
                            $days = 30;
                        }elseif ($form->rush_type==3){
                            $days = 365;
                        }
                        $logModel = new RentCarDeductionLogModel();
                        $logModel->rent_id = $form->getKey();
                        $deduction_num  = str_replace(',','',$form->deduction_num);
                        $logModel->rent_money = $deduction_num;
                        $rent = str_replace(',','',$form->rent);
                        $deduction_num = str_replace(',','',$form->deduction_num);
                        $deposit = str_replace(',','',$form->deposit);
                        $logModel->rent_over = $rent - $deduction_num;
                        $logModel->deposit_over = $deposit;
                        $logModel->next_at = date('Y-m-d',strtotime("+{$days} days"));
                        $logModel->remark = "系统扣除";
                        if ($logModel->save()){
                            RentCarModel::where('id',$form->getKey())->update(['rent'=>($rent - $deduction_num)]);
                        }
                    }
                }
            });
            Admin::script(
                <<<SCRIPT
                $("input[name=timexz]").click(function(){
                     var num = $(this).val();
                     if(num==1){
                        $('.rent_day').val(30);
                     }else if(num == 2){
                         $('.rent_day').val(365);
                     }
                });
                $(".rent_at").on('click',function(e){
                  var type =  $(':radio[name="rent_type"]:checked').val();
                  if(type != 20 && type !=''){
                    if($('.staff_id').val() == ''){
                        layer.alert('请选择司机', {
                          icon: 1,
                          skin: 'layer-ext-moon'
                        });
                        
                    }
                  }
                });
                $('.client_id').on('change',function(){
                   $.ajax({
                        method: 'get',
                        dataType:"json",
                        url: '/admin/getclient?id=' + $(this).val(),
                        success: function (res) {
                            if(res.status){
                                $('.mobile').val(res.data.mobile);
                            }
                        }
                    });
                });
SCRIPT
            );
        });
    }
}
