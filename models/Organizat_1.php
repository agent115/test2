<?php

namespace app\models;

use yii\db\ActiveRecord;

class Organizat_1 extends ActiveRecord
{

    public static function tableName()
    {
        return 'organizat';
    }

    public function getCategory()
    {
        return $this->hasOne(Organizat::className(), ['id' => 'category_id']);
    }

    /*Получение комментов*/
    /*public function get_comments('id'){
    	$query = Comments::find()->where(['comment_product' => $id])->all();
    }*/

}