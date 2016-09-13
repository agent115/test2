<?php

namespace app\modules\admin\models;

use Yii;

/**
 * This is the model class for table "category".
 *
 * @property string $id
 * @property string $parent_id
 * @property string $name
 * @property string $keywords
 * @property string $description
 */
class Maps extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'maps';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'maps', 'images', 'link','adress'], 'required'],
           // [['parent_id'], 'integer'],
            [['title', 'maps', 'images', 'link'], 'string', 'max' => 255]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Название',
            'adress' => 'Адрес',
            'link' => 'Ссылка',
            'images' => 'Картинка из категории',
            'maps'=>'Координаты'
        ];
    }
}
