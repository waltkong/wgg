<?php

namespace app\admin\controller\web;

use app\admin\model\web\Config_model;
use app\common\controller\Backend;

use app\index\logic\ContactusLogic;
use think\Db;
use think\Exception;
use think\exception\PDOException;
use think\exception\ValidateException;

/**
 * 网站配置管理
 *
 * @icon fa fa-circle-o
 */
class Config extends Backend
{
    
    /**
     * Config_model模型对象
     * @var \app\admin\model\web\Config_model
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\web\Config_model;

    }





    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */


    public function add(){
        $row = $this->getRow();
        $this->view->assign("row", $row);

        if ($this->request->isPost()) {
            $params = $this->request->post("row/a");
            if ($params) {
                $result = false;
                Db::startTrans();
                try {

                    $updates = [];
                    foreach ($params as $key => $param){
                        $updates[] = [
                            'group' => 'company_info',
                            'config_key' => $key,
                            'config_name' => ContactusLogic::$register_key[$key] ?? '-',
                            'config_value' => $param,
                            'createtime' => time(),
                            'updatetime' => time(),
                        ];
                    }
                    (new Config_model())->where('group','company_info')->delete();
                    $result = (new Config_model())->insertAll($updates);

                    Db::commit();
                } catch (ValidateException $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                } catch (PDOException $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                } catch (Exception $e) {
                    Db::rollback();
                    $this->error($e->getMessage());
                }
                if ($result !== false) {
                    $this->success();
                } else {
                    $this->error(__('No rows were inserted'));
                }
            }
            $this->error(__('Parameter %s can not be empty', ''));
        }

        return $this->fetch();
    }




    protected function getRow(){
        $defalut = ContactusLogic::$defaluts;

        $list = (new Config_model())->where('group','company_info')->select();
        $list = collection($list)->toArray();
        foreach ($list as $k => $item){
            $defalut[$item['config_key']] = $item['config_value'];
        }
        return $defalut;
    }




}
