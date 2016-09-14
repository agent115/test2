<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\color\ColorInput;
use himiklab\colorbox\Colorbox;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Category */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="category-form container">

    <?php $form = ActiveForm::begin(); ?>

    <?php // $form->field($model, 'parent_id')->textInput(['maxlength' => true]) ?>
    <!-- --><? /*= $form->field($model, 'parent_id')->dropDownList(\yii\helpers\ArrayHelper::map(\app\models\Category::find()->all(), 'id', 'name')) */ ?>
    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'description')->textInput(array('placeholder' => 'Введите название картинки (Пример: name.png  или image.jpg )')) ?>


    <?php
    /*// Usage with ActiveForm and model
    echo $form->field($model, 'keywords')->widget(ColorInput::classname(), [
        'options' => ['placeholder' => 'Select color ...'],
    ]);
*/

    ?>


    <?= $form->field($model, 'image')->fileInput() ?>
    <? /*= $form->field($model, 'adress')->textInput(['maxlength' => true]) */ ?><!--
    --><? /*= $form->field($model, 'link')->textInput(['maxlength' => true]) */ ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
