<?php

namespace app\admin\model\web;

use think\Model;
use traits\model\SoftDelete;

class Visitlog_model extends Model
{

    use SoftDelete;

    

    // 表名
    protected $name = 'web_visitlog';
    
    // 自动写入时间戳字段
    protected $autoWriteTimestamp = 'int';

    // 定义时间戳字段名
    protected $createTime = 'createtime';
    protected $updateTime = 'updatetime';
    protected $deleteTime = 'deletetime';

    // 追加属性
    protected $append = [

    ];
    

    







}
