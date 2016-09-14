<?php
namespace app\models;

use Yii;
use yii\base\Model;

/* Объявляем класс формы */

class ContactForms extends Model
{
    /* Объявление переменных */
    public $name, $email, $subject, $body, $verifyCode;

    /* Правила для полей формы обратной связи (валидация) */
    public function rules()
    {
        return [
            /* Поля обязательные для заполнения */
            [['name', 'email', 'subject', 'body'], 'required'],
            /* Поле электронной почты */
            ['email', 'email'],
            /* Капча */
            ['verifyCode', 'captcha', 'captchaAction' => 'index/captcha'],
        ];
    }

    /* Определяем названия полей */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Подтвердите код',
            'name' => 'Имя',
            'email' => 'Электронный адрес',
            'subject' => 'Тема',
            'body' => 'Сообщение',
        ];
    }

    /* функция отправки письма на почту */
    public function contact($emailto)
    {
        /* Проверяем форму на валидацию */
        if ($this->validate()) {
            Yii::$app->mailer->compose()
                ->setFrom([$this->email => $this->name])/* от кого */
                ->setTo($emailto)/* куда */
                ->setSubject($this->subject)/* имя отправителя */
                ->setTextBody($this->body)/* текст сообщения */
                ->send(); /* функция отправки письма */

            return true;
        } else {
            return false;
        }
    }
}