<?php
namespace app\models;

use app\models\User;
use yii\base\Model;

class Login extends Model
{
    public $username;
    public $password_hash;
    public $rememberMe = true;
    private $_user = false;

    public function rules()
    {
        return [
            [['username', 'password_hash'], 'required'],

            ['password', 'validatePassword'] //собственная функция для валидации пароля
        ];
    }

    public function attributeLabels()
    {
        return [
            'username' => 'Логин',
            'password_hash' => 'Пароль',
            'rememberMe' => 'Запомнить',
        ];
    }

    public function validatePassword($attribute, $params)
    {
        if (!$this->hasErrors()) // если нет ошибок в валидации
        {
            $user = $this->getUser(); // получаем пользователя для дальнейшего сравнения пароля
            if (!$user || !$user->validatePassword($this->password)) {
                //если мы НЕ нашли в базе такого пользователя
                //или введенный пароль и пароль пользователя в базе НЕ равны ТО,
                $this->addError($attribute, 'Пароль/логин введены неверно');
                //добавляем новую ошибку для атрибута password о том что пароль или имейл введены не верно
            }
        }
    }

    public function login()
    {
        if ($this->validate()) {
            if ($this->rememberMe) {
                $u = $this->getUser();
                $u->generateAuthKey();
                $u->save();
            }
            return Yii::$app->user->login($this->getUser(), $this->rememberMe ? 3600 * 24 * 30 : 0);
        }
        return false;
    }

    public function getUser()
    {
        if ($this->_user === false) {
            $this->_user = Users::findByUsername($this->username);
        }

        return $this->_user;
    }
}



