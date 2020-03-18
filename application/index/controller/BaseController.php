<?php
namespace app\index\controller;

use app\common\controller\Frontend;
use app\index\logic\BaseLogic;
use app\index\logic\ContactusLogic;
use think\Request;

class  BaseController extends Frontend{


    private $logic;

    public function __construct(Request $request = null)
    {
        $this->logic = new BaseLogic();

        parent::__construct($request);

        $this->myInit();

    }

    private function myInit(){
        $this->assign("asset_version",time());

        $this->menuData();

        $this->logic->insertVisitLog();

        $this->AssignCompanyConfig();

    }

    protected function menuData(){
        $solution_list = $this->logic->solution_list();
        $this->assign('solution_list',$solution_list);
        $product_list = $this->logic->product_list();
        $this->assign('product_list',$product_list);

        $this->assign('now_solution',$solution_list[0]);
        $this->assign('now_product',$product_list[0]);
    }

    protected function AssignCompanyConfig(){
        $contactlogic = new ContactusLogic();
        $company_info = $contactlogic->company_info();
        $this->assign('page_company_info',$company_info);
    }



}