<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\ClientDetail;
use App\Models\ClientDetailModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class ClientDetailController extends AdminController
{
    protected $title = '客户管理';
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new ClientDetail(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->client_name;
            $grid->client_mobile;
            $grid->client_wechat;
            $grid->client_qq;
            $grid->client_email;
            $grid->id_card;
            $grid->created_at;

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');
                $filter->like('client_name');
                $filter->like('client_mobile');
                $filter->like('id_card');
                $filter->between('created_at')->datetime();

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
        return Show::make($id, new ClientDetail(), function (Show $show) {
            $show->id;
            $show->client_name;
            $show->client_mobile;
            $show->client_wechat;
            $show->client_qq;
            $show->client_email;
            $show->id_card;
            $show->prove_img->unescape()->as(function ($item){
                $img = '';
                if ($item){
                    $item = json_decode($item,true);
                    foreach ($item as $v){
                        $img .="<img data-action='preview-img' src='/uploads/{$v}' style='max-width:200px;max-height:200px' class='img' />";
                    }
                }
                return $img;
            });
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
//        dd(request()->all());
        return Form::make(new ClientDetail(), function (Form $form) {
            $form->display('id');
            $form->text('client_name')->required();
            $form->text('client_mobile')->required();
            $form->text('client_wechat');
            $form->text('client_qq');
            $form->text('client_email');
            $form->text('id_card');
            $form->multipleImage('prove_img')->saving(function ($imgs){
                return json_encode($imgs);
            });

            $form->display('created_at');
            $form->display('updated_at');
            $form->hidden('op_id')->default(auth('admin')->user()->id);
        });
    }

    protected function getclient(){
        $id = intval(request()->get('id'));
        if ($id){
            $detail = ClientDetailModel::where('id',$id)->first();
            if ($detail){
                return json_encode(['status'=>1,'data'=>['name'=>$detail['client_name'],'mobile'=>$detail['client_mobile']]]);
            }else{
                return json_encode(['status'=>0,'msg'=>'data is no exit!']);
            }
        }else{
            return json_encode(['status'=>0,'msg'=>'data is no exit!']);
        }
    }
}
