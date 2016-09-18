<?php
namespace app\models;

use yii\db\ActiveRecord;

class Maps extends ActiveRecord
{

    public static function tableName()
    {
        return 'maps';
    }

    public function getOrganizat()
    {
        return $this->hasMany(Maps::className(), ['parent_id' => 'id']);
    }
}
