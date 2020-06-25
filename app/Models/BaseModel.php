<?php


namespace App\Models;
use Illuminate\Database\Eloquent\Model;

class BaseModel extends Model
{


    /**
     * 数据options 用于页面出select
     *
     * @param unknown $select
     * @param unknown $where
     * @param unknown $order
     */
    static public function dataOptions($select, $where = null, $order = [])
    {
        $query = self::select($select);

        if ($where) {
            $query = $query->where($where);
        }

        if ($order) {
            if (count($order) == count($order, 1)) {
                list ($attr, $desc) = $order;
                $query = $query->orderBy($attr, $desc);
            } else {
                foreach ($order as $one) {
                    list ($attr, $desc) = $one;
                    $query = $query->orderBy($attr, $desc);
                }
            }
        }
        list ($key, $name) = is_array($select) ? $select : explode(',', $select);

        $data = $query->groupBy($key)->get();

        $options = [];
        foreach ($data as $one) {
            $options[$one->$key] = $one->$name;
        }

        return collect($options)->all();
    }
}
