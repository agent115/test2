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
    <h1>Жалоба</h1>

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

                <?php $form->field($modelp, 'comment_id') ?>

                <?= $form->field($modelp, 'name')->textInput(['autofocus' => true]) ?>

                <?= $form->field($modelp, 'email') ?>

                <?= $form->field($modelp, 'nomer') ?>

                <?= $form->field($modelp, 'subject') ?>

                <?= $form->field($modelp, 'body')->textArea(['rows' => 6]) ?>

                <?= $form->field($modelp, 'verifyCode')->widget(Captcha::className(), [
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
