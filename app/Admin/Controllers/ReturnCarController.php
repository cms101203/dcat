<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ReturnCar;
use App\Models\AdminIndustry;
use App\Models\CarsIllegalLogModel;
use App\Models\CarsModel;
use App\Models\ClientDetailModel;
use App\Models\CostLogModel;
use App\Models\DriverDetailModel;
use App\Models\InvoiceLogModel;
use App\Models\RentCarModel;
use App\Models\RentCompanyModel;
use App\Models\ReturnCarModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

use Dcat\Admin\Widgets\Table;
use Dcat\Admin\Form\NestedForm;

use Dcat\Admin\Admin;
use Illuminate\Http\Request;

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
            });
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
            });
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
            $grid->column('refund')->display(function ($item)use ($grid){
                return "<span class='edit-form' data-url='returncar/{$this->id}/edit' title='添加返款'><i class='feather icon-feather'></i></span>";
            });

            $grid->remark->responsive(0)->display(function ($item){
                if ($this->is_checkout==0){
                    return "<span style='color: red'>{$item}</span>";
                }else{
                    return $item;
                }
            });
            $grid->column('illega','违章记录')->display(function ($item)use ($grid){

                $rent = RentCarModel::where('id',$this->rent_id)->first();
                if (!empty($rent)){
                    return "<span class='create-form' data-url='illegalog/create?id={$this->id}&rid={$this->rent_id}&cid={$rent->car_id}&sid={$rent->staff_id}' title='新增违章记录'><i class='fa  fa-cogs'></i></span>";
                }
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
            $grid->column('invoice','发票记录')->display(function ($item)use ($grid){
                return "<span class='invoice-form' data-url='invoicelog/create?id={$this->id}' title='新增发票记录'><i class='feather icon-clipboard'></i></span>";
            })->expand(function ($model){
                $byarr = [];
                $bylist = InvoiceLogModel::where('return_id',$this->id)->get()->toArray();
                if ($bylist){
                    foreach ($bylist as $k=>$v){
                        $byarr[$k]['tax_num'] = $v['tax_num'];
                        $type = AdminIndustry::where('id',$v['type'])->first();
                        $byarr[$k]['type']  = $type['title'];
                        $byarr[$k]['title'] = $v['title'] ;
                        $byarr[$k]['money'] = $v['money']." 元" ;
                        $byarr[$k]['point'] = $v['point'];
                        $byarr[$k]['kp_at'] = $v['kp_at'];
                        $byarr[$k]['remark'] = $v['remark'] ;
                    }
                    return new Table(['税号','发票类型','抬头','金额','税点','开票时间','发票备注'],$byarr);
                }

            });


            Form::dialog('返款记录')
                ->click('.invoice-form') // 绑定点击按钮
                ->url('invoicelog') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

            Form::dialog('添加返款')
                ->click('.edit-form') // 绑定点击按钮
                ->url('returncar/create') // 表单页面链接，此参数会被按钮中的 “data-url” 属性替换。。
                ->width('700px') // 指定弹窗宽度，可填写百分比，默认 720px
                ->height('550px') // 指定弹窗高度，可填写百分比，默认 690px
                ->success('Dcat.reload()'); // 新增成功后刷新页面

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
                $filter->between('return_at')->datetime();

            });

            $grid->withBorder();
            $grid->disableCreateButton();
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
                $table->text('money','费用金额');
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
            //支付类型1现金2银行卡3公对公4微信5支付宝'
            $form->select('pay_type')->options([1=>'现金',2=>'银行卡',3=>'公对公',4=>'微信',5=>'支付宝']);
            $form->textarea('remark');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
            $form->saved(function ($form)use($id){
                if ($form->isCreating()) {
                    if ($form->wz_deposit){
                        //违章押金
                        $data = [];
                        $data['data_id']   = $form->getKey();
                        $data['rid']       = $form->rent_id;
                        $rent =RentCarModel::where('id',$form->rent_id)->first();
                        $data['kid']       = $rent->client_id;
                        $data['type']      = CostLogModel::COST_WZ_DEPOSIT;
                        $data['cost_type'] = 2;
                        $data['money']     = $form->wz_deposit;
                        $data['cp_id']     = auth('admin')->user()->cp_id;
                        $data['op_id']     = auth('admin')->user()->id;
                        CostLogModel::costLog($data);
                    }
                    if ($form->paid){
                        //还车实收金额
                        $data = [];
                        $data['data_id']   = $form->getKey();
                        $data['rid']       = $form->rent_id;
                        $rent =RentCarModel::where('id',$form->rent_id)->first();
                        $data['kid']       = $rent->client_id;
                        $data['type']      = CostLogModel::COST_PAID;
                        $data['cost_type'] = 2;
                        $data['money']     = $form->paid;
                        $data['cp_id']     = auth('admin')->user()->cp_id;
                        $data['op_id']     = auth('admin')->user()->id;
                        CostLogModel::costLog($data);
                    }
                    $rent = RentCarModel::where('id',$id)->first();
                    CarsModel::where('id',$rent->car_id)->update(['car_status'=>0]);
                }
            });
        });
    }

    protected function refund(){
        $id = intval(request()->get('id'));
        $returncar = ReturnCarModel::where('id',$id)->first();
        return Form::make($returncar, function (Form $form) use($returncar){
            $form->hidden('id')->default($returncar['id']);
            $form->radio('refund_pay_type')->options([1=>'现金',2=>'银行卡',3=>'公对公',4=>'微信',5=>'支付宝'])->default($returncar['refund_pay_type'])->required();
            $time = $returncar['refund_at'] ? $returncar['refund_at'] : date('Y-m-d');
            $form->date('refund_at')->default($time)->required();
            $refund =  $returncar['refund'] ? $returncar['refund'] : 0;
            $form->number('refund')->default($refund)->required();
            $form->textarea('refund_remark')->default($returncar['refund_remark']);
            $form->action("refundstore");


            Admin::script("<<<SCRIPT
            $(document).ready(function(){
            
                $('.layui-layer-btn0').on('click',function () {
                    alert(\"ddd\");
//                     console.log($(':radio[name=\"refund_pay_type\"]:checked').val());
//                     return false;
                });
            });
SCRIPT"
            );
        });
    }

    protected function refundstore(Request $request){
        $data = $request->all();
        $param = [];
        if (!isset($data['refund_pay_type'])){
            Form::dialog('返款记录')->error('qingxuanze '); // 新增成功后刷新页面


        }
        $param['refund_pay_type'] = $data['refund_pay_type'];
        $param['refund_at'] = $data['refund_at'];
        $param['refund'] = $data['refund'];
        $param['refund_mark'] = $data['refund_mark'];
        $res = ReturnCarModel::where('id',$data['id'])->update($param);

        if ($res){
            admin_success('返款', '成功了');
        }else{
            admin_error('返款', '失败了');
        }
        $this->response()->refresh();
    }
}
