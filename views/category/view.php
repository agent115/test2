<title>Организации</title>
<?php $idd = Yii::$app->request->get('id');?>
<?php foreach($category as $cat):?>
          <ul class="breadcrumb">
          <li><a href="<?=  \yii\helpers\Url::home()?>"><i class="glyphicon glyphicon-home"> </i> Главная</a> <span class="divider">/</span></li>
          <li><?=$cat->name ?></li>
          
        </ul>
    <?php endforeach;?>
<section>
	<div class="container">
		<div class="row">
                    <div class="col-md-6 col-md-offset-3">
				<?php if(!empty($organization)):?>
						<?php foreach($organization as $ord):?>
						<h3><a href="<?=  \yii\helpers\Url::to(['organizat/view', 'id'=>$ord->id, 'idd'=>$idd])?>"><?=$ord->name?></a></h3>
						<p><i class="glyphicon glyphicon-earphone"> </i>Телефон:<?= $ord->phone?></p>
						<p><i class="glyphicon glyphicon-earphone"> </i>Телефон:<?= $ord->phone_2?></p>
						<p><i class="glyphicon glyphicon-map-marker"> </i>Адрес:<?= $ord->adress?></p>
						<p><i class="glyphicon glyphicon-time"> </i>График:<?= $ord->grafic?></p>
					<?php endforeach;?>
		
					<?php endif;?>
			</div>
		</div>
	</div>
</section>