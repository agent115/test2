<?php $this->title = 'Организации'; ?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <?php if (!empty($organization)): ?>
                    <?php foreach ($organization as $ord): ?>
                        <h3>
                            <a href="<?= \yii\helpers\Url::to(['organizat/view', 'id' => $ord->id]) ?>"><?= $ord->name ?></a>
                        </h3>
                        <p>Телефон:<?= $ord->phone ?></p>
                        <p>Телефон:<?= $ord->phone_2 ?></p>
                        <p>Адрес:<?= $ord->adress ?></p>
                        <p>График:<?= $ord->grafic ?></p>
                    <?php endforeach; ?>

                <?php endif; ?>
            </div>
        </div>
    </div>
</section>