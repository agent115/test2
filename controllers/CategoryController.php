<?php

namespace app\controllers;

use yii\data\Pagination;
use app\controllers\AppController;
use app\models\Category;
use app\models\Organizat;
use app\models\Ip;
use app\models\Maps;

use Yii;

class CategoryController extends AppController
{

    function actionIndex()
    {
        $maps = Maps::find()->all();
        $category = Category::find()->all();

        return $this->render('index', compact('category', 'maps'));
    }

    function actionCateg()
    {
        $category = Category::find()->all();
        return $this->render('categ', compact('category'));
    }

    function actionView()
    {
        $ip = $_SERVER["REMOTE_ADDR"];

        /* Item::updateAll([
             'id_group' => $newID,
             'in_group' => '[[in_group]] + $delta',
         ], ['=', 'id_group', $oldID]);*/

        $id_star = Yii::$app->request->get('id_star');
        $star = Yii::$app->request->get('star');
        //print_r($id_star);
        //print_r($star);
        $stars = new Organizat();

        if ((Yii::$app->request->get('id_star'))) {
            if ((Yii::$app->request->get('star'))) {

                $stars = Organizat::updateAllCounters([
                    'raiting' => $star,
                    'rait_count' => 1], [

                        'id' => $id_star]

                );

            }
        };

        $ipsave = new Ip();
        if (Yii::$app->request->get('id_star')) {
            if (Yii::$app->request->get('star')) {
                $ipsave->ip = $ip;
                $ipsave->article_id = $id_star;
                $ipsave->save();
            }
        };

        $ip_load = Ip::find()->select(['article_id'])->where(['ip' => $ip])->asArray()->all();


        $id = Yii::$app->request->get('id');
        $articlesid = Ip::find()->select(['article_id'])->all();
        // $ip =  $_SERVER['REMOTE_ADDR'];
        //$ip = Ip::find()->select(['article_id'])->where(['ip'=>$ip])->asArray()->all();

        $organization = Organizat::find()->where(['Category_id' => $id])->all();
        $category = Category::find()->where(['id' => $id])->all();
        return $this->render('view', compact('organization', 'category', 'ip_load'));

    }

    /* function actionDar(){
         $category = Category::find()->all();
         return $this->render('dar', compact('category'));
     }*/

    public function actionSearch()
    {
        $q = trim(Yii::$app->request->get('q'));
        $q = trim(Yii::$app->request->get('q'));

        if (!$q)
            return $this->render('search');
        $query = organizat::find()->where(['like', 'name', $q]);
        $pages = new Pagination(['totalCount' => $query->count(), 'pageSize' => 3, 'forcePageParam' => false, 'pageSizeParam' => false]);
        $products = $query->offset($pages->offset)->limit($pages->limit)->all();
        return $this->render('search', compact('products', 'pages', 'q'));
    }
}