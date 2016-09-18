<?php
namespace app\models;

use yii\db\ActiveRecord;

class Category extends ActiveRecord
{

    public static function tableName()
    {
        return 'category';
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getOrganizat()
    {
        return $this->hasMany(Organizat::className(), ['category_id' => 'id']);
    }
} 
