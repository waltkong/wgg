<?php

// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

use think\Route;
//网站链接层级优化

//pc端
Route::rule('solution/[:id]','index/Solution/detail');  //解决方案详情
Route::rule('product_cate/[:id]','index/Product/product_category_index');    //产品分类主页
Route::rule('product/[:id]','index/Product/detail');   //产品详情
Route::rule('customcase/[:category_id]','index/Customcase/index');   //客户案例列表
Route::rule('customcase_detail/[:id]','index/Customcase/detail');   //客户案例详情
Route::rule('news/[:category_id]','index/News/index');   //新闻列表
Route::rule('news_detail/[:id]','index/News/detail');   //新闻详情
Route::rule('contact_company','index/Contactus/index');   //联系我们-公司介绍
Route::rule('contact_us','index/Contactus/contact_us');   //联系我们的-联系我们
Route::rule('contact_us_domessage','index/Contactus/do_message');   //


//移动端
Route::rule('mobile_index','index/Index/mobile_index');  //首页
Route::rule('mobile_solution/[:id]','index/Solution/mobile_detail');  //解决方案详情
//Route::rule('product_cate/[:id]','index/Product/product_category_index');    //产品分类主页
//Route::rule('product/[:id]','index/Product/detail');   //产品详情
//Route::rule('customcase/[:category_id]','index/Customcase/index');   //客户案例列表
//Route::rule('customcase_detail/[:id]','index/Customcase/detail');   //客户案例详情
//Route::rule('news/[:category_id]','index/News/index');   //新闻列表
//Route::rule('news_detail/[:id]','index/News/detail');   //新闻详情
//Route::rule('contact_company','index/Contactus/index');   //联系我们-公司介绍
//Route::rule('contact_us','index/Contactus/contact_us');   //联系我们的-联系我们
//Route::rule('contact_us_domessage','index/Contactus/do_message');   //


return [
    //别名配置,别名只能是映射到控制器且访问时必须加上请求的方法
    '__alias__'   => [
    ],
    //变量规则
    '__pattern__' => [
    ],
//        域名绑定到模块
//        '__domain__'  => [
//            'admin' => 'admin',
//            'api'   => 'api',
//        ],
];
