<?php
namespace app\index\logic;

use app\admin\model\web\Banner_model;
use app\admin\model\web\Cases_model;
use app\admin\model\web\Company_model;
use app\admin\model\web\Config_model;
use app\admin\model\web\News_model;
use app\common\util\UrlUtil;

class ContactusLogic extends BaseLogic{

    static $register_key = [
        'company_description' => '公司简介',
        'company_spirit' => '公司精神',
        'company_value_view' => '核心价值观',
        'company_manage_theory' => '经营理念',
        'company_dream' => '公司愿景',
        'image_url' => '荣誉证书',
        'contact_phone' => '联系电话',
        'contact_mobile' => '联系手机',
        'contact_people' => '联系人',
        'company_email' => '官方邮箱',
        'company_address' => '公司地址',
        'company_address_long' => '公司地址经度',
        'company_address_lat' => '公司地址纬度',
        'company_logo_image' => '公司logo',
        'company_copyright' => '公司版权信息',
        'company_wechat_image' => '公司二维码',
    ];


    static $register_seo_key = [
        'seo_index_title' => '首页title',
        'seo_index_description' => '首页description',
        'seo_index_keyword' => '首页keyword',

        'seo_solution_title' => '解决方案title',
        'seo_solution_description' => '解决方案description',
        'seo_solution_keyword' => '解决方案keyword',

        'seo_product_title' => '产品中心title',
        'seo_product_description' => '产品中心description',
        'seo_product_keyword' => '产品中心keyword',

        'seo_customcase_title' => '客户案例title',
        'seo_customcase_description' => '客户案例description',
        'seo_customcase_keyword' => '客户案例keyword',

        'seo_news_title' => '新闻资讯title',
        'seo_news_description' => '新闻资讯description',
        'seo_news_keyword' => '新闻资讯keyword',

        'seo_aboutus_title' => '关于我们title',
        'seo_aboutus_description' => '关于我们description',
        'seo_aboutus_keyword' => '关于我们keyword',
    ];


    static $company_defaluts = [
        'company_description' => '',
        'company_spirit' => '',
        'company_value_view' => '',
        'company_manage_theory' => '',
        'company_dream' => '',
        'image_url' => '',
        'contact_phone' => '',
        'contact_mobile' => '',
        'contact_people' => '',
        'company_email' => '',
        'company_address' => '',
        'company_address_long' => '',
        'company_address_lat' => '',
        'company_logo_image' => '',
        'company_copyright' => '',
        'company_wechat_image' => '',
    ];


    static $company_info;
    static $seo_info;

    public function company_info(){
        $defalut = self::$company_defaluts;
        if(empty(self::$company_info)){
            $list = (new Config_model)->where('group','company_info')->select();
            $list = collection($list)->toArray();
            foreach ($list as $k => $item){
                $defalut[$item['config_key']] = $item['config_value'];

                if($item['config_key'] == 'image_url'){
                    $defalut['image_array'] = explode(',',$item['config_value']);
                }

            }
            self::$company_info = $defalut;
        }
        return self::$company_info;
    }


    public function seo_info(){
        $seo = self::$register_seo_key;

        if(empty(self::$seo_info)){
            $list = (new Config_model)->where('group','seo_info')->select();
            $list = collection($list)->toArray();
            foreach ($list as $k => $item){
                $seo[$item['config_key']] = $item['config_value'];
            }
            self::$seo_info = $seo;
        }
        return self::$seo_info ;
    }



}