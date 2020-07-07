<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\AdminIndustry;
use App\Models\CarsIllegalLogModel;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\DriverDetailModel;
use App\Models\RentCarModel;
use App\Models\RentCompanyModel;
use App\Models\ReturnCarModel;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use Dcat\Admin\Layout\Column;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Widgets\Table;
use Dcat\Admin\Form\NestedForm;

class ReturnCarController extends AdminController
{
    protected $title="还车管理";
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        return Grid::make(new ReturnCar(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->rent_id->using(RentCarModel::dataOptions(['id','rent_num']))->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $grid->is_checkout->using([0=>'未结帐',1=>'已结帐'])->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->return_at->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->return_mileage->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} /Km</span>";
                }else{
                    return $item."/Km";
                }
            });
            $grid->return_oil->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->is_odrive->using([0=>'未超驶',1=>'超驶'])->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->is_time->using([0=>'未超时',1=>'超时'])->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->kilometers->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} /km</span>";
                }else{
                    return $item."/km";
                }
            });;
            $grid->outime_num->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} 小时</span>";
                }else{
                    return $item."　小时";
                }
            });
            $grid->cost_json->display("费用明细")->expand(function ($modal) {
                $cost_json = !empty($this->cost_json) ? json_decode($this->cost_json,true) : [];


                if ($cost_json){
                    $cost_jsons = [];
                    foreach ($cost_json as $k=>$item) {
                        $cost_jsons[$k]['title'] = isset($item['title']) ? $item['title'] : '--';
                        $cost_jsons[$k]['money'] = isset($item['money']) ? $item['money']."元" : '--';
                        $cost_jsons[$k]['desc'] = isset($item['desc']) ? $item['desc'] : '--';
                    }

                    $titles = ['费用名称','费用金额','备注'];
                    return Table::make($titles, $cost_jsons);
                }
            });;
            $grid->wz_deposit->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} /元</span>";
                }else{
                    return $item."/元";
                }
            });
            $grid->receivable->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} /元</span>";
                }else{
                    return $item."/元";
                }
            });
            $grid->paid->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item} /元</span>";
                }else{
                    return $item."/元";
                }
            });
            $grid->column('refund')->display("编辑")->modal(function ($modal) {
                // 设置弹窗标题
                $modal->title('返款记录');
                $html = "<div>
                            <div class=\"form-group row form-field \">
                              <div class=\"col-md-2  text-capitalize control-label\">
                                <span>返款金额</span></div>
                              <div class=\"col-md-8\">
                                <div class=\"help-block with-errors\"></div>
                                <div class=\"input-group\">
                                  <div class=\"input-group\">
                                    <input style=\"text-align: center;\" type=\"number\" value=\"".$this->refund."\" id='remoney'  class=\" remoney form-control paid initialized\" placeholder=\"输入 返款金额\">
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class=\"form-group row form-field \">
                                <label for=\"form-field-remark-GmN1F\" class=\"col-md-2  text-capitalize control-label\">返款备注</label>
                                <div class=\"col-md-8\">
                                    <div class=\"help-block with-errors\"></div>
                                    <textarea  class=\"form-control remark refmark\" id='refmark' rows=\"5\" placeholder=\"输入 返款备注\">".$this->refund_mark."</textarea>  
                                </div>
                            </div>
                            <div class=\"btn-group\" style=\"margin-left:40%;\">
                                <input type='hidden' value='".$this->id."' class='ret_id' id='ret_id' />
                                <button class=\"btn btn-primary submit refund_btn \" '><i class=\"feather icon-save\"></i> 提交</button>
                            </div>
                        </div>";
                return $html;
            });

            $grid->remark->responsive(0)->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });;
            $grid->column('illega','违章记录')->display(function ($item)use ($grid){
                $rent = RentCarModel::where('id',$this->rent_id)->first();
                return "<span class='create-form' data-url='illegalog/create?id={$this->id}&rid={$this->rent_id}&cid={$rent->car_id}&sid={$rent->staff_id}' title='新增违章记录'><i class='fa  fa-cogs'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = CarsIllegalLogModel::where('rent_id',$this->rent_id)->where('return_id',$this->id)->get()->toArray();
                if ($bylist){
                    foreach ($bylist as $k=>$v){
                        $rent = RentCarModel::where('id',$v['rent_id'])->first();
                        $cars = CarsModel::where('id',$v['car_id'])->first();
                        $staff = DriverDetailModel::where('id',$v['staff_id'])->first();
                        $type = AdminIndustry::where('id',$v['type'])->first();
                        $offsetcars = CarsModel::where('id',$v['offset_car'])->first();
                        $byarr[$k]['rent_num'] = $rent['rent_num'];
                        $byarr[$k]['car_id']  = $cars['car_num'];
                        $byarr[$k]['staff'] = empty($staff) ? "--" : $staff['name'] ;
                        $byarr[$k]['bits'] = $v['bits']." 分" ;
                        $byarr[$k]['money'] = $v['money']." 元" ;
                        $byarr[$k]['illegal_at'] = $v['illegal_at'];
                        $byarr[$k]['type'] = empty($type) ?  "--" : $type['title'] ;
                        $byarr[$k]['offset_car'] = empty($offsetcars) ?  "--" : $offsetcars['car_num'] ;
                        $byarr[$k]['offset_money'] = $v['offset_money'] ;
                        $byarr[$k]['remark'] = $v['remark'] ;
                    }
                    return new Table(['租车订单号','违章车辆','违章司机','扣分','罚款金额','违章时间','处理方式','抵消车辆','抵消金额','备注'],$byarr);
                }

            });

            Form::dialog('违章记录')
                ->click('.create-form') // 绑定点击按钮
                ->url('illegalog/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面
            $grid->created_at->responsive(0);
            $grid->updated_at->sortable()->responsive(0);

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

            });

            $grid->withBorder();
//            $grid->fixColumns(2);

            Admin::script(<<<SCRIPT
                
                $(".refund_btn").on('click',function(e){
                 var modal = $('.show').attr('id');
                  var id = $("#ret_id").val();
                  var refund = $("#remoney").val();
                  var remark = $("#refmark").val();
                  console.log(modal);
                      if(refund =='' || refund == '0'){
                        layer.alert('请填写返款金额!', {
                          icon: 1,
                          skin: 'layer-ext-moon'
                        });
                        return false;
                      }
                       $.ajax({
                        method: 'get',
                        dataType:"json",
                        url: '/admin/refund',
                        data:{
                            id:id,
                            refund:refund,
                            remark:remark
                        },
                        success: function (res) {
                            if(res.status){
                               layer.alert('添加成功!', {
                                  icon: 1,
                                  skin: 'layer-ext-moon'
                                });
                                $("#"+modal).modal('hide')
                            }
                        }
                    });
                });
SCRIPT
            );
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
        $detail = ReturnCarModel::where('id',$id)->first();
        $rent = RentCarModel::where('id',$detail['rent_id'])->first();
        $client = [];
        $cars = [];
        $staff = [];
        $rentstatus = [0=>'未结帐',1=>'已结帐'];
        $company = RentCompanyModel::where('id',auth('admin')->user()->cp_id)->first();
        if ($rent){
            $client = ClientDetailModel::where('id',$rent['client_id'])->first();
            $cars = CarsModel::leftJoin('admin_industry','admin_industry.id','=','cars.car_type')->where('cars.id',$rent['car_id'])->first();
            $staff = DriverDetailModel::where('id',$rent['staff_id'])->first();
        }
        return view('returncar.details',compact('detail','rent','client','cars','staff','rentstatus','company'));
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $id = intval(request()->get('id'));
        return Form::make(new ReturnCar(), function (Form $form) use($id){
            $form->display('id');
            $form->select('rent_id')->options(RentCarModel::dataOptions(['id','rent_num']))->default($id)->required();
            $form->radio('is_checkout')->options([0=>'未结帐',1=>'已结帐'])->default(0);
            $form->datetime('return_at');
            $form->number('return_mileage');
            $form->text('return_oil')->default('满格');
            $form->radio('is_odrive')->options([0=>'未超驶',1=>'超驶'])->default(0);
            $form->number('kilometers');
            $form->radio('is_time')->options([0=>'未超时',1=>'超时'])->default(0);
            $form->number('outime_num')->help("按小时数添加");
            $form->number('wz_deposit');
            $form->table('cost_json', function (NestedForm $table) {
                $table->text('title','费用名称');
                $table->number('money','费用金额');
                $table->text('desc','费用说明');
            })->default(function (){
                $cost_fied = ['超公里费','超时费','亏油费','油费','过路费','饭费','住宿费','停车费','洗车费'];
                $cost_json = [];
                foreach ($cost_fied as $k=>$v){
                    $cost_json[$k] = ['title'=>$v,'money'=>'0','desc'=>''];
                }
                return json_encode($cost_json);
            })->saving(function ($v) {
                return json_encode($v);
            });

            $form->number('receivable');
            $form->number('paid');
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);

            $form->display('created_at');
            $form->display('updated_at');
        });
    }

    protected function refund(){
        $id = intval(request()->get('id'));
        $refund = trim(request()->get('refund'));
        $remark = trim(request()->get('remark'));
        if ($id){
            $res = ReturnCarModel::where('id',$id)->update(['refund'=>$refund,'refund_mark'=>$remark]);
            if ($res){
                return json_encode(['status'=>1,'msg'=>'添加成功!']);
            }else{
                return json_encode(['status'=>0,'msg'=>'添加失败!']);
            }
        }else{
            return json_encode(['status'=>1,'msg'=>'添加失败!']);
        }
    }
}
