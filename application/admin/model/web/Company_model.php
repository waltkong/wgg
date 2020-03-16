<?php

namespace app\admin\model\web;

use think\Model;
use traits\model\SoftDelete;

class Company_model extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'web_company';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [

    ];
    

    protected static function init()
    {
        self::afterInsert(function ($row) {
            $pk = $row->getPk();
            $row->getQuery()->where($pk, $row[$pk])->update(['weigh' => $row[$pk]]);
        });
    }


    // 前台表单下拉列表
    public static function getOptions(){
        $list =  self::where(['is_guest'=>1])->select();
        $list = collection($list)->toArray();
        $ret = [];
        foreach ($list as $k => $v){
            $ret[$v['id']] = $v['name'];
        }
        return $ret;
    }






}
