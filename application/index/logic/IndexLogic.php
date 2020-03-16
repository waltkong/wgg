<?php
namespace app\index\logic;

use app\admin\model\web\Banner_model;
use app\common\util\UrlUtil;

class IndexLogic extends BaseLogic{


    /**
     * 获取banner
     * @param int $group
     * @param int $count
     */
    public function banner_list($group=1, $count=10){
        $obj = new Banner_model();
        $list = $obj
            ->where('group',$group)
            ->order('createtime', 'desc')
            ->limit(0,$count)
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list[$k]['jump_url'] = UrlUtil::getFullUrl($v['jump_url']);
        }
        return $list;
    }





}