<?php use yii\widgets\ActiveForm; ?>


<div class="container">
    <div class="row">
        <div class="col-md-5">
            <h2>Регистрация</h2>
            <?php

            $form = ActiveForm::begin(['class' => "form-horizontal"])
            ?>
            <?= $form->field($models, 'username')->textInput(['autofocus' => true]) ?>
            <?= $form->field($models, 'password')->passwordInput() ?>
            <?= $form->field($models, 'email')->textInput(['autofocus' => true]) ?>


            <div>
                <button type='submit' class="btn btn-primary">Регистрация</button>

            </div>

            <?php ActiveForm::end(); ?>

        </div>
    </div>
</div>