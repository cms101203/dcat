<?php

namespace App\Admin\Controllers;

use App\Models\AdminIndustry as AdminIndustryModel;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Column;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Layout\Row;
use Dcat\Admin\Models\Repositories\Menu;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use Dcat\Admin\Tree;
use Dcat\Admin\Widgets\Box;
use Dcat\Admin\Widgets\Form as WidgetForm;
use App\Admin\Repositories\AdminIndustry;

class AdminIndustryController extends AdminController
{
    public function title()
    {
        return trans("分类管理");
    }

    public function index(Content $content)
    {
        return $content
            ->title($this->title())
            ->description(trans('admin.list'))
            ->body(function (Row $row) {
                $row->column(7, $this->treeView()->render());

                $row->column(5, function (Column $column) {
                    $form = new WidgetForm();
                    $form->action(admin_url('industry'));

                    $IndustryModel = new AdminIndustryModel();

                    $form->select('parent_id', trans('admin.parent_id'))->options($IndustryModel::selectOptions());
                    $form->text('title', trans('admin.title'))->required();
                    $form->text('remark', "备注")->help("特殊分类说明 比如车辆所属个人时填写人名");
                    $form->icon('icon', trans('admin.icon'))->help($this->iconHelp());

                    $form->hidden('_token')->default(csrf_token());

                    $form->width(9, 2);

                    $column->append(Box::make(trans('admin.new'), $form));
                });
            });
    }

    /**
     * @return \Dcat\Admin\Tree
     */
    protected function treeView()
    {
        $menuModel = new AdminIndustryModel();

        return new Tree(new $menuModel(), function (Tree $tree) {
            $tree->disableCreateButton();
            $tree->disableQuickCreateButton();
            $tree->disableEditButton();

            $tree->branch(function ($branch) {
                $payload = "<i class='fa {$branch['icon']}'></i>&nbsp;<strong>{$branch['title']}</strong>";
                if (!empty($branch['remark'])){
                    $payload .="--".$branch['remark'];
                }
                return $payload;
            });
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    public function form()
    {
        $menuModel = new AdminIndustryModel();

        return Form::make(new AdminIndustry([]), function (Form $form) use ($menuModel) {


            $form->tools(function (Form\Tools $tools) {
                $tools->disableView();
            });

            $form->display('id', 'ID');

            $form->select('parent_id', trans('admin.parent_id'))->options(function () use ($menuModel) {
                return $menuModel::selectOptions();
            })->saving(function ($v) {
                return (int) $v;
            });
            $form->text('title', trans('admin.title'))->required();
            $form->text('remark', "备注")->help("特殊分类说明 比如车辆所属个人时填写人名");
            $form->icon('icon', trans('admin.icon'))->help($this->iconHelp());

            $form->display('created_at', trans('admin.created_at'));
            $form->display('updated_at', trans('admin.updated_at'));
        });
    }

    /**
     * Help message for icon field.
     *
     * @return string
     */
    protected function iconHelp()
    {
        return 'For more icons please see <a href="http://fontawesome.io/icons/" target="_blank">http://fontawesome.io/icons/</a>';
    }
}
