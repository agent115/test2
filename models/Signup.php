<?php

namespace app\models;

use app\models\User;

use yii\base\Model;

class Signup extends Model
{

    public $username;
    public $password;
    public $email;
    public $auth_key;


    public function rules()
    {
        return [
            [['email', 'username', 'password'], 'required'],
            ['email', 'email'],
            ["password", 'string', 'min' => 2, 'max' => 10],
            ['email', 'unique', 'targetClass' => 'app\models\User'],
            ['username', 'unique', 'targetClass' => 'app\models\User']
        ];
    }

    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $user = $this->getUser();

            if (!$user || !$user->validatePassword($this->password)) {
                $this->addError($attribute, 'Логин/пароль введены не верно');
            }
        }
    }

    public function signup()
    {
        $user = new Users();
        $user->email = $this->email;
        $user->username = $this->username;
        $user->password = \Yii::$app->security->generatePasswordHash($password);  //sha1($this->password);
        /* if($this->rememberMe){
         $user->auth_key = \Yii::$app->security->generateRandomString($auth_key);
         }*/
        $user->auth_key = $this->generateAttributeLabel($auth_key);
        $user->save();
    }
}