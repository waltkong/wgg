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

        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description']?? '');
        $this->assign('seo_keyword',$row['keyword']?? '');

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

        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description']?? '');
        $this->assign('seo_keyword',$row['keyword']?? '');

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

        $this->assign('product_list',$this->logic->product_list($row['id']));

        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description']?? '');
        $this->assign('seo_keyword',$row['keyword']?? '');

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

        $this->assign('seo_title',$row['name'] ?? '');
        $this->assign('seo_description',$row['description']?? '');
        $this->assign('seo_keyword',$row['keyword']?? '');

        return $this->view->fetch();
    }



}