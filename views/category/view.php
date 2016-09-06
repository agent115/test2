<?php
use app\models\Ip;
?>
<title>Организации</title>
<script type="javascript">
    var $ip = '<?=$ip;?>';
</script>
<div id="res"></div>
<?php

 print_r (Yii::$app->request->post('idBox'));
?>
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
						<div>Оцените организацию:
							<?php
							if (!Yii::$app->user->isGuest){
								echo'<div class="posthide">


									<a  href="<?=$_SERVER[\'HTTPS\']?>?id_star=<?=$ord->id?>&star=1" class="href" title="1" style="font-size: 15px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER[\'HTTPS\']?>?id_star=<?=$ord->id?>&star=2" class="href" title="2" style="font-size: 18px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER[\'HTTPS\']?>?id_star=<?=$ord->id?>&star=3" class="href" title="3" style="font-size: 21px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER[\'HTTPS\']?>?id_star=<?=$ord->id?>&star=4" class="href" title="4" style="font-size: 24px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER[\'HTTPS\']?>?id_star=<?=$ord->id?>&star=5" class="href" title="5" style="font-size: 27px"><i class="glyphicon glyphicon-star"></i> </a>

								</div>';

							}
							?>
								<div class="posthide">


									<a  href="<?=$_SERVER['HTTPS']?>?id_star=<?=$ord->id?>&star=1" class="href" title="1" style="font-size: 15px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER['HTTPS']?>?id_star=<?=$ord->id?>&star=2" class="href" title="2" style="font-size: 18px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER['HTTPS']?>?id_star=<?=$ord->id?>&star=3" class="href" title="3" style="font-size: 21px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER['HTTPS']?>?id_star=<?=$ord->id?>&star=4" class="href" title="4" style="font-size: 24px"><i class="glyphicon glyphicon-star"></i> </a>
									<a  href="<?=$_SERVER['HTTPS']?>?id_star=<?=$ord->id?>&star=5" class="href" title="5" style="font-size: 27px"><i class="glyphicon glyphicon-star"></i> </a>

								</div>
								<?php echo $_POST['idBox']?>
							<span style="">

							</span>

								<?php $ip = Ip::find()->select(['article_id'])->where(['ip'=>$ip])->where(['article_id'=>$articlesid])->all();


								?>

							<?php $pp = implode (',',$ip);?>
							<?php $ppp = array()?>
							<?php $ppp[] = $pp?>
							<?php

							$accessVote = 1;
							if(in_array($ord->id, $ppp)){
								$accessVote = 0;
							};
							?>


							<!--<span class="access"><?/*= $accessVote*/?></span>
							<a class="plus glyphicon glyphicon-plus"></a>
							<span class="ratingnum"><?/*=$ord->raiting*/?></span>
							<a class="minus glyphicon glyphicon-minus"></a>
							--><?php
/*							if(!$accessVote){
								echo 'Вы уже оценили эту организацию';
							}
							*/?>

							<br/>
						<?php //$a = $ord->raiting/$ord->rait_count;?>


							     <?php
									if($ord->rait_count == 0){
										$ord->rait_count = 1;
										$row =  $ord->raiting/  $ord->rait_count;
									}else{
										$row =  $ord->raiting/  $ord->rait_count;
									}

								 ?>

							<?php ?>



						<?php echo"<div class='basic' data-average='$row' data-id='".$ord['id']."'></div>";?><?=$ord->rait_count ?>







					<?php endforeach;?>


					<?php endif;?>
			</div>
		</div>
	</div>
</section>

<script type="javascript">




</script>