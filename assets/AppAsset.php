<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/site.css',
            "css/bootstrap.min.css",
            "css/icomoon-social.css",
            'text/css',
              "css/leaflet.ie.css" ,
            "css/main.css",
        "css/mycss.css",
        "css/Ratingjquery.css"
    ];
    public $js = [
        "js/modernizr-2.6.2-respond-1.1.0.min.js",
            
      "http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js",
       "js/jquery-1.9.1.min.js",
        "js/bootstrap.min.js",
        "http://cdn.leafletjs.com/leaflet-0.5.1/leaflet.js",
        "js/jquery.fitvids.js",
        "js/jquery.sequence-min.js",
       "js/jquery.bxslider.js",
        "js/main-menu.js",
        "js/template.js",
        'js/js.js',
        'js/java.js',
        'js/main.js',
        'js/java1.js',
        'js/jRatingjquery.js',
        'js/jRating.js',
        //'js/jquery-1.6.2.min.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapPluginAsset',
    ];
}
