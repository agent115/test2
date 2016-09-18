<?php

namespace app\models;

use yii\db\ActiveRecord;

class Organizat extends ActiveRecord
{

    public static function tableName()
    {
        return 'organizat';

    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getCategory()
    {
        return $this->hasOne(Organizat::className(), ['id' => 'category_id']);
    }

    /*Получение комментов*/
    /*public function get_comments('id'){
    	$query = Comments::find()->where(['comment_product' => $id])->all();
    }*/

}