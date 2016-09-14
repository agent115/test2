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
class Category extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     *
     */
    public $image;

    public function behaviors()
    {

        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    public static function tableName()
    {
        return 'category';
    }

    public function getCategory()
    {
        return $this->hasOne(Category::className(), ['id' => 'parent_id']);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['name',], 'required'],

            [['name', 'description'], 'string', 'max' => 255],
            [['image'], 'file', 'extensions' => 'png, jpg'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            //'parent_id' => 'Организация',
            'name' => 'Название',
            //'keywords' => 'Цвет',
            'description' => 'Введите название картинки',
            'image' => 'Картинка',
        ];
    }

    public function upload()
    {
        if ($this->validate()) {
            $path = 'images/' . $this->image->baseName . '.' . $this->image->extension;
            //$this->attachImage($path);

            $this->image->saveAs($path);


            /* $this->attachImage($path);
             @unlink($path);*/

            return true;
        } else {
            return false;
        }
    }
}
