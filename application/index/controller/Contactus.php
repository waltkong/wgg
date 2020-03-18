<?php

namespace app\index\controller;

use app\admin\model\web\Message_model;
use app\common\util\ValidateUtil;
use app\index\logic\ContactusLogic;
use think\Request;

class Contactus extends BaseController
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
        $this->logic = new ContactusLogic();

        $banner = $this->logic->banner_one(6);
        $this->assign('banner',$banner);
        $this->assign('highlight_menu',6);

        $contactlogic = new ContactusLogic();
        $seo_info = $contactlogic->seo_info();
        $this->assign('seo_title',$seo_info['seo_aboutus_title']);
        $this->assign('seo_description',$seo_info['seo_aboutus_description']);
        $this->assign('seo_keyword',$seo_info['seo_aboutus_keyword']);

    }

    public function index()
    {
        $input = $this->req;
        $this->assign('this_category_id',1);

        $company_info = $this->logic->company_info();
        $this->assign('row',$company_info);

        return $this->view->fetch();
    }

    public function contact_us(){
        $input = $this->req;
        $this->assign('this_category_id',2);

        $company_info = $this->logic->company_info();
        $this->assign('row',$company_info);

        return $this->view->fetch();
    }

    //接受用户留言
    public function do_message(){
        $input = $this->req;
        if(!isset($input['username']) || empty($input['username'])){
            $this->error('用户不全');
        }
        if(!isset($input['phone']) || empty($input['phone']) || !ValidateUtil::isMobile($input['phone'])){
            $this->error('手机不对');
        }
        if(\request()->isPost()){
            $data = [
                'username' => $input['username'],
                'phone' => $input['phone'],
                'reply_time' => $input['reply_time'] ?? '',
                'need' => $input['need'] ?? '',
                'ip' => request()->ip(),
                'createtime' => time(),
            ];
            ( new Message_model())->insert($data);
        }
        $this->success('ok');
    }





}
