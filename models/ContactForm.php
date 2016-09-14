<?php

namespace app\models;

use Yii;
use yii\base\Model;
use yii\swiftmailer\Mailer;

/**
 * ContactForm is the model behind the contact form.
 */
class ContactForm extends Model
{

    public $name;
    public $email;
    public $subject;
    public $body;
    public $verifyCode;
    public $nomer;


    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            // name, email, subject and body are required
            [['name', 'email', 'subject', 'body', 'nomer'], 'required'],
            // email has to be a valid email address
            ['email', 'email'],
            // verifyCode needs to be entered correctly
            ['verifyCode', 'captcha'],
            [['nomer'], 'number'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'verifyCode' => 'Введите ключ',
            'name' => 'Имя',
            'body' => 'Описание организации',
            'subject' => 'Наименование организации',
            'nomer' => 'Контактрый телефон'
        ];
    }

    /**
     * Sends an email to the specified email address using the information collected by this model.
     * @param string $email the target email address
     * @return boolean whether the model passes validation
     */

    public function contact($email)
    {

        if ($this->validate()) {
            Yii::$app->mailer->compose()
                ->setTo("agent1156@yandex.ru")
                ->setFrom('agent1156@yandex.ru')
                ->setSubject($this->subject)
                ->setSubject($this->nomer)
                ->setTextBody($this->body)
                ->send();

            return true;
        }
        return false;
    }
}
