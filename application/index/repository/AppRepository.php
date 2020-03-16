<?php
namespace app\index\repository;

class AppRepository{

    static $main_category = [
        'index' => [
            'name' => '首页',
            'flag' => 1,
        ],
        'solution' => [
            'name' => '解决方案',
            'flag' => 2,
        ],
        'product' => [
            'name' => '产品中心',
            'flag' => 3,
        ],
        'case' => [
            'name' => '客户案例',
            'flag' => 4,
        ],
        'news' => [
            'name' => '新闻资讯',
            'flag' => 5,
        ],
        'us' => [
            'name' => '关于我们',
            'flag' => 6,
        ],
    ];


    static $news_category = [
        [
            'id' => 1,
            'name' => '公司新闻'
        ],
        [
            'id' => 2,
            'name' => '行业新闻'
        ],
        [
            'id' => 3,
            'name' => '产品动态'
        ],
    ];


    static $case_category = [
        [
            'id' => 1,
            'name' => '高校/中小学'
        ],
        [
            'id' => 2,
            'name' => '政府机关'
        ],
        [
            'id' => 3,
            'name' => '企事业单位'
        ],
    ];


}