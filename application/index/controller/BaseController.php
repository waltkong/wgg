<?php
namespace app\index\controller;

use app\common\controller\Frontend;
use app\common\util\DeviceUtil;
use app\index\logic\BaseLogic;
use app\index\logic\ContactusLogic;
use app\index\repository\AppRepository;
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
        $this->assign("asset_version",time());   //time()

        $this->menuData();

        $this->logic->insertVisitLog();

        $this->AssignCompanyConfig();


        $this->assign('visitDevice',DeviceUtil::isMobile()?'mobile':'pc');


    }

    protected function menuData(){
        $solution_list = $this->logic->solution_list();
        $this->assign('menu_solution_list',$solution_list);

        $product_category_list = $this->logic->product_category_list();
        $this->assign('menu_product_category_list',$product_category_list);

        $this->assign('menu_customcase_category_list',AppRepository::$case_category);
        $this->assign('menu_news_category_list',AppRepository::$news_category);

    }

    protected function AssignCompanyConfig(){
        $contactlogic = new ContactusLogic();
        $company_info = $contactlogic->company_info();
        $this->assign('page_company_info',$company_info);
    }



}