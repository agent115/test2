<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\ContactForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use yii\captcha\Captcha;

$this->title = 'Жалоба на комментарий';
$this->params['breadcrumbs'][] = $this->title;
?>
<title>Жалоба на комментарий</title>
<div class="site-contact container">
    <h1>Жалоба на комментарий</h1>

    <?php if (Yii::$app->session->hasFlash('contactFormSubmitted')): ?>

        <div class="alert alert-success">
            Сообщение отправленно админестратору
        </div>


    <?php else: ?>

        <p>

        </p>

        <div class="row">
            <div class="col-lg-5">

                <?php $form = ActiveForm::begin(['id' => 'contact-form']); ?>

                <?php $form->field($modelcom, 'comment_id') ?>

                <?= $form->field($modelcom, 'name')->textInput(['autofocus' => true]) ?>

                <?= $form->field($modelcom, 'email') ?>

                <?= $form->field($modelcom, 'nomer') ?>

                <?= $form->field($modelcom, 'subject') ?>

                <?= $form->field($modelcom, 'body')->textArea(['rows' => 6]) ?>

                <?= $form->field($modelcom, 'verifyCode')->widget(Captcha::className(), [
                    'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
                ]) ?>

                <div class="form-group">
                    <?= Html::submitButton('Отправить', ['class' => 'btn btn-primary', 'name' => 'contact-button']) ?>
                </div>

                <?php ActiveForm::end(); ?>

            </div>
        </div>

    <?php endif; ?>
</div>
