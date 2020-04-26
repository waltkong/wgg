<?php
namespace app\index\logic;

use app\admin\model\web\Banner_model;
use app\admin\model\web\Cases_model;
use app\admin\model\web\Company_model;
use app\admin\model\web\News_model;
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
        $maxFileHeight = 0;
        foreach ($list as $k => $v){
            $list[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);

            $filename = APP_ROOT_PATH.$v['image_url'];
//            $img_info = getimagesize($filename);


            $list[$k]['jump_url'] = UrlUtil::getFullUrl($v['jump_url']);

        }
        return $list;
    }

    /**
     * 获取友链公司
     * @param int $group
     * @param int $count
     */
    public function company_list($input, $count=100){
        $obj = new Company_model();
        if(isset($input['is_friend'])){
            $obj = $obj->where('is_friend',$input['is_friend']);
        }
        $list = $obj->order('weigh', 'desc')
            ->limit(0,$count)
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['image'] = UrlUtil::getFullUrl($v['image']);
            $list[$k]['jump_url'] = UrlUtil::getFullUrl($v['jump_url']);
        }
        return $list;
    }

    public function news_list($count=10){
        $obj = new News_model();
        $list = $obj->order('id', 'desc')
            ->limit(0,$count)
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list[$k]['create_date'] = date('d',$v['createtime']);
            $list[$k]['create_year_month'] = date('Y-m',$v['createtime']);
        }
        return $list;
    }

    public function case_list($count=10){
        $obj = new Cases_model();
        $list = $obj->order('id', 'desc')
            ->limit(0,$count)
            ->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $v){
            $list[$k]['image_url'] = UrlUtil::getFullUrl($v['image_url']);
            $list[$k]['create_date'] = date('d',$v['createtime']);
            $list[$k]['create_year_month'] = date('Y-m',$v['createtime']);

            $list[$k]['company_name'] = Company_model::where('id',$v['company_id'])->value('name','-');

        }
        return $list;
    }


    public function one_vedio(){
        $obj = new Banner_model();
        $row = $obj
            ->where('group',1)
            ->where('jump_url','like','%.mp4%')
            ->order('createtime', 'desc')
            ->find();
        return empty($row)? '' : $row->jump_url;
    }



}