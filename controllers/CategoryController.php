<?php

namespace app\controllers;
use yii\data\Pagination;
use app\controllers\AppController;
use app\models\Category;
use app\models\Organizat;

use Yii;
class CategoryController extends AppController{
   
    function actionIndex(){
        $category = Category::find()->all();
        return $this->render('index', compact('category'));
    }
    
    function actionCateg(){
        $category = Category::find()->all();
        return $this->render('categ', compact('category'));
    }
    
    function  actionView(){
       $id = Yii::$app->request->get('id');
       $organization = Organizat::find()->where(['Category_id' => $id])->all();
       $category = Category::find()->where(['id' => $id])->all();
        return $this->render('view', compact('organization','category'));
     
    }
    
   /* function actionDar(){
        $category = Category::find()->all();
        return $this->render('dar', compact('category'));
    }*/
    
public function actionSearch(){
	  $q = trim(Yii::$app->request->get('q'));
        $q = trim(Yii::$app->request->get('q'));
        
        if(!$q)
            return $this->render('search');
        $query = organizat::find()->where(['like', 'name', $q]);
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search', compact('products', 'pages', 'q'));
}
}