<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "comments".
 *
 * @property string $comment_id
 * @property string $comment_author
 * @property string $comment_text
 * @property string $parent_id
 * @property string $comment_product
 * @property string $approved
 * @property string $created
 * @property integer $is_admin
 */
class Comments extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'comments';
    }

    /**
     * @inheritdoc
     */
    /* public function rules()
     {
         return [
             [['comment_author', 'comment_text', 'comment_product'], 'required'],
             [['comment_text', 'approved'], 'string'],
             [['parent_id', 'comment_product', 'is_admin'], 'integer'],
             [['created'], 'safe'],
             [['comment_author'], 'string', 'max' => 255],
         ];
     }*/

    /**
     * @inheritdoc
     */


    /*
        public function attributeLabels()
        {
            return [
                'comment_id' => 'Comment ID',
                'comment_author' => 'Comment Author',
                'comment_text' => 'Comment Text',
                'parent_id' => 'Parent ID',
                'comment_product' => 'Организация',
                'approved' => 'Approved',
                'created' => 'Created',
                'is_admin' => 'Is Admin',
            ];
        }
        public function signup()
        {
            $user = new Comments();
            $user->comment_author = $this->comment_author;
            $user->comment_text = $this->comment_text;
            $user->comment_product = $this->comment_product;
            $user->save();
        }

        */

}
