<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "organizat".
 *
 * @property string $id
 * @property string $category_id
 * @property string $name
 * @property string $phone
 * @property string $phone_2
 * @property string $adress
 * @property string $mars
 * @property string $grafic
 * @property string $keywords
 * @property string $description
 * @property string $logo
 * @property string $images
 */
class Organizat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'organizat';
    }
     public function getCategory(){
        return $this->hasOne(Organizat::className(),['id'=>'category_id']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'name', 'phone', ], 'required'],
            [['category_id'], 'integer'],
            [['name', 'phone', 'phone_2', 'adress', 'mars', 'grafic', 'keywords', 'description', 'logo', 'images'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '№',
            'category_id' => 'Категория',
            'name' => 'Название',
            'phone' => 'Телефон',
            'phone_2' => 'Телефон 2',
            'adress' => 'Адресс',
            'mars' => 'Mars',
            'grafic' => 'График',
            'keywords' => 'Ключевики',
            'description' => 'Описание',
            'logo' => 'Логотип',
            'images' => 'Картинка',
        ];
    }
}
