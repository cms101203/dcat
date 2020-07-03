<?php
namespace App\Scopes;

use Dcat\Admin\Models\Administrator;
use Illuminate\Database\Eloquent\Scope;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Exception;

class CompanyScope implements Scope
{

    public $colName = 'op_id';

    /**
     * 全局op_id过滤
     *
     * {@inheritdoc}
     *
     * @see \Illuminate\Database\Eloquent\Scope::apply()
     */
    public function apply(Builder $builder, Model $model)
    {

        $this->colName = !empty($floder) ? $floder  : $this->colName;
        $query = $builder;
        /**
         * 获取当前用户用户组
         *
         * @var Ambiguous $opIds
         */

        $id = Auth::guard('admin')->user() ? Auth::guard('admin')->user()->id : 0;

        if ($id && $id !=1){
            $query = $builder->where($this->colName, Auth::guard('admin')->user()->id);
        }
        return $query;
    }
}
