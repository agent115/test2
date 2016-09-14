<?php
use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\ContactForm */

$this->title = 'Контакты';
?>
<article class="col-xs-12 col-lg-6">

    <div class="row margin-null">
        // Заголовок
        <h1><?= Html::encode($this->title) ?></h1>

        // Условие отправления формы, если она отправлена выводим сообщение
        <?php if (Yii::$app->session->hasFlash('contactFormSubmitted')): ?>

            <div class="alert alert-success">
                Спасибо за обращение к нам. Мы постараемся ответить вам как можно скорее.
            </div>

            // иначе выводим форму
        <?php else: ?>

            <?php $form = ActiveForm::begin([
                'id' => 'contact-form', /* Идентификатор формы */
                'options' => ['class' => 'form-horizontal'], /* класс формы */
                'fieldConfig' => [ /* классы полей формы */
                    'template' => "<div class=\"col-lg-3\">{label}</div>\n<div class=\"col-lg-9\">{input}</div>\n<div class=\"col-lg-12 col-lg-offset-3 \">{error}</div>"

                ],
            ]); ?>
            /* Поля формы и капча */
            <?= $form->field($model, 'name') ?>
            <?= $form->field($model, 'email') ?>
            <?= $form->field($model, 'subject') ?>

            <?= $form->field($model, 'body')->textArea(['rows' => 6]) ?>
            <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                'captchaAction' => '/index/captcha',
                'template' => '<div class="row"><div class="col-lg-4">{image}</div><div class="col-lg-7">{input}</div></div>',
            ]) ?>
            // Кнопка отправки формы
            <div class="form-group">
                <?= Html::submitButton('Отправить сообщение', ['class' => 'btn btn-default waves-effect btn-color-orange btn-color-orange-long', 'name' => 'contact-button']) ?>
            </div>

            <?php ActiveForm::end(); ?>

        <?php endif; ?>

    </div>
</article>