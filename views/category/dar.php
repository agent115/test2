<?php foreach ($categ as $cats): ?>
    <ul class="breadcrumb">
        <li><a href="<?= \yii\helpers\Url::home() ?>"><i class="glyphicon glyphicon-home"> </i> Главная</a> <span
                class="divider">/</span></li>
        <li><a href="<?= \yii\helpers\Url::to(['category/view', 'id' => $cats->id]) ?>"><?= $cats->name ?></a></li>
        <li>

            <?php if (!empty($organization)): ?>
                <?php foreach ($organization as $ord): ?>

                    <?= $ord->name ?></a>

                <?php endforeach; ?>

            <?php endif; ?>
        </li>

    </ul>
<?php endforeach; ?>




<?= $form->field($model, 'rememberMe')->checkbox([
    'template' => "<div class=\"col-lg-offset-1 col-lg-3\">{input} {label}</div>\n<div class=\"col-lg-8\">{error}</div>",
]) ?>