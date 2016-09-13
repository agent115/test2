<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Maps */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="maps-form container">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->dropDownList(\yii\helpers\ArrayHelper::map(\app\models\Organizat::find()->all(), 'id', 'name')) ?>

    <?= $form->field($model, 'adress')->textInput(array('placeholder' => 'Введите адрес организации')) ?>

    <?= $form->field($model, 'link')->dropDownList(\yii\helpers\ArrayHelper::map(\app\models\Organizat::find()->all(), 'id', 'name')) ?>

    <?= $form->field($model, 'images')->dropDownList(\yii\helpers\ArrayHelper::map(\app\models\Category::find()->all(), 'description', 'name')) ?>

    <?= $form->field($model, 'maps')->textInput(array('placeholder' => 'Координаты вводятся в формате 43.00076082, 44.68593824')) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
