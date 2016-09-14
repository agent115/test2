<?php
namespace app\models;

use yii\base\Model;
use  yii\db\ActiveRecord;

class Testform extends ActiveRecord
{

    public static function tableName()
    {
        return 'comments';
    }

    public function attributeLabels()
    {
        return [
            'comment_author' => 'Имя',
            'parent_id' => 'Маил',
            'comment_text' => 'Текст',
        ];
    }

    public function rules()
    {
        return [
            [['comment_author', 'comment_text'], 'required'],
            [['comment_text', 'parent_id'], 'trim'],
        ];
    }
}
