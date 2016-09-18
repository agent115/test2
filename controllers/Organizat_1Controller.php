<?php
namespace app\controllers;

use app\controllers\AppController;
use app\models\Category;
use app\models\Organizat;
use app\models\Comments;
use app\models\Testform;
use yii\db\ActiveRecord;
use Yii;


class Organizat_1Controller extends AppController
{


    function actionView()
    {
        $id = Yii::$app->request->get('id');
        $comments = Comments::find()->where(["comment_product" => $id])->all();
        $organization = Organizat::find()->where(['id' => $id])->all();
        $Category = Category::find()->all();
        return $this->render('view', compact('organization', 'Category', 'comments'));

    }

} 



