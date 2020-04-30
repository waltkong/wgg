<?php

namespace app\index\controller;


use app\index\logic\ProductLogic;
use think\Request;
use app\index\logic\ContactusLogic;

class Product extends BaseController
{

    protected $noNeedLogin = '*';
    protected $noNeedRight = '*';
    protected $layout = '';


    private $logic;
    private $req;

    public function __construct(Request $request = null)
    {
        parent::__construct($request);
        $this->req = request()->param(false);
        $this->logic = new ProductLogic();

        $this->assign('highlight_menu',3);

    }


    //产品分类主页
    public function product_category_index(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->product_category_one($input);
        $this->assign('row',$row);

        $this->assign('banner',['image_url' => $row['banner_image'] ?? '', 'name' => $row['name'] ?? '',]);

        $this->assign('product_list',$this->logic->product_list($row['id']));

        $this->assign('seo_title',$row['seo_title'] ?? '');
        $this->assign('seo_description',$row['seo_description'] ?? '');
        $this->assign('seo_keyword',$row['seo_keyword'] ?? '');

        return $this->view->fetch();
    }

    //产品详情
    public function detail(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->product_one($input);
        $this->assign('row',$row);

        $this->assign('banner',['image_url' => $row['banner_image'] ?? '', 'name' => $row['name'] ?? '',]);

        $this->assign('product_list',$this->logic->product_list(1));

        $this->assign('seo_title',$row['seo_title'] ?? '');
        $this->assign('seo_description',$row['seo_description'] ?? '');
        $this->assign('seo_keyword',$row['seo_keyword'] ?? '');

        return $this->view->fetch();
    }


    //手机端mobile
    //产品分类主页
    public function mobile_product_category_index(){
        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->product_category_one($input);
        $this->assign('row',$row);

        $this->assign('banner',['image_url' => $row['banner_image'] ?? '', 'name' => $row['name'] ?? '',]);

        $input['category_id'] = $input['id'] ?? '';
        $pageIndex = $input['pageIndex'] ?? 1;
        $eachPage = $input['eachPage'] ?? 10;

        $product_list_res = $this->logic->product_list_paginate($input,$pageIndex,$eachPage);

        $this->assign('product_list',$product_list_res['data']);
        $this->assign('pageIndexList',$this->logic->getPageIndexList($pageIndex,$eachPage,$product_list_res['total']));

        $params = [
            'pageIndex' => $pageIndex,
            'eachPage' => $eachPage,
            'category_id' => $input['category_id'],
        ];
        $this->assign("params",$params);

        $this->assign('seo_title',$row['seo_title'] ?? '');
        $this->assign('seo_description',$row['seo_description'] ?? '');
        $this->assign('seo_keyword',$row['seo_keyword'] ?? '');

        return $this->view->fetch();
    }

    //手机端mobile
    //产品详情
    public function mobile_detail(){

        $input = $this->req;
        $input['id'] = $input['id'] ?? '';
        $row = $this->logic->product_one($input);
        $this->assign('row',$row);

        $this->assign('banner',['image_url' => $row['banner_image'] ?? '', 'name' => $row['name'] ?? '',]);

        $this->assign('product_list',$this->logic->product_list(1));

        $this->assign('seo_title',$row['seo_title'] ?? '');
        $this->assign('seo_description',$row['seo_description'] ?? '');
        $this->assign('seo_keyword',$row['seo_keyword'] ?? '');

        return $this->view->fetch();
    }



}