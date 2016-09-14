<?php

namespace app\modules\admin\models;

use Yii;
use yii\web\UploadedFile;

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
 * @property string $maps
 */
class Organizat extends \yii\db\ActiveRecord
{
    public $image;

    //public $gallery;
    public function behaviors()
    {

        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'organizat';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['category_id', 'phone'], 'required'],
            [['category_id'], 'integer'],
            [['mars'], 'string'],
            [['name', 'phone', 'phone_2', 'adress', 'grafic', 'keywords', 'description', 'logo', 'maps'], 'string', 'max' => 255],
            [['image'], 'file', 'extensions' => 'png, jpg'],
            //[['gallery'], 'file',  'extensions' => 'png, jpg', 'maxFiles' => 4]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => '№',
            'category_id' => '',
            'name' => 'Название',
            'phone' => 'Телефон',
            'phone_2' => 'Телефон 2',
            'adress' => 'Адресс',
            'mars' => 'Mars',
            'grafic' => 'График',
            'keywords' => 'Ключевики',
            'description' => 'Описание',
            'logo' => 'Логотип',
            'image' => 'Картинка',
        ];
    }

    public function upload()
    {
        if ($this->validate()) {
            $path = 'upload/store/' . $this->image->baseName . '.' . $this->image->extension;
            $this->image->saveAs($path);

            return true;
        } else {
            return false;
        }
    }
}
