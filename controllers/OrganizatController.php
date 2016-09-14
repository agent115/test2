<?php
namespace app\controllers;

use app\controllers\AppController;
use app\models\Category;
use app\models\Organizat;
use app\models\Comment;
use app\models\Comments;
use app\models\Arrcom;
use app\models\Raitip;
use app\models\Testform;
use yii\db\ActiveRecord;


use Yii;

class OrganizatController extends AppController
{

    function actionView()
    {
        $id = Yii::$app->request->get('id');
        $comments = Comments::find()->where(["comment_product" => $id])->all();
        $count = Comments::find()->select(['comment_id'])->where(["comment_product" => $id])->all();
        $counts = count($count);
        // $model = Comment::find()->where(['title' => 'some post title'])->one();
        // $model = new Coment;


        $model = new Comment;
        if ($model->load(Yii::$app->request->post())) {
            if ($model->validate()) {
                //  Yii::$app->session->setFlash('success','Комментарий записан');
                if (!Yii::$app->user->isGuest) {
                    $model->comment_author = Yii::$app->user->identity->username;
                    $model->comment_product = $id;
                }
                $model->save();
                return $this->refresh();
            } else(
            Yii::$app->session->setFlash('error', 'Ошибка')
            );
        }

        $Models = new Raitip;
        $Models->stati_id = Yii::$app->request->post('id');
        $Models->ip = Yii::$app->request->post('rate');


        $idd = Yii::$app->request->get('idd');
        $organization = Organizat::find()->where(['id' => $id])->orderBy(['raiting' => SORT_ASC])->all();
        $Category = Category::find()->all();
        $categ = Category::find()->where(['id' => $idd])->all();

        return $this->render('view', compact('organization', 'Category', 'categ', 'comments', 'model', 'counts'));

    }


}


