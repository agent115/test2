<?php

namespace app\models;

use yii\db\ActiveRecord;

class Ip extends ActiveRecord
{

    public static function tableName()
    {
        return 'ip';
    }


    /*Получение комментов*/
    /*public function get_comments('id'){
    	$query = Comments::find()->where(['comment_product' => $id])->all();
    }*/

}