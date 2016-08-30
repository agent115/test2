<?php
namespace app\controllers;

use app\controllers\AppController;
use app\models\Category;
use app\models\Organizat;
use app\models\Comments;
use app\models\Testform;
use yii\db\ActiveRecord;


use Yii;

class OrganizatController extends AppController{

function  actionView(){
       $id = Yii::$app->request->get('id');
       $idd = Yii::$app->request->get('idd');
       $organization = Organizat::find()->where(['id' => $id])->all();
       $Category = Category::find()->all();
       $categ = Category::find()->where(['id' => $idd])->all();
        return $this->render('view', compact('organization','Category','categ'));
     
    }

} 


