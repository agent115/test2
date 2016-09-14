<?php

namespace app\models;

use yii\db\ActiveRecord;

class Admin extends ActiveRecord
{

    public static function tableName()
    {
        return 'auth_assignment';
    }


    /*Получение комментов*/
    /*public function get_comments('id'){
    	$query = Comments::find()->where(['comment_product' => $id])->all();
    }*/

}