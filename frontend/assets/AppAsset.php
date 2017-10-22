<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
//        'themes/medico/assets/css/bootstrap.min.css',
        'themes/medico/assets/css/main.css',
        'themes/medico/assets/css/animations.css',
        'themes/medico/assets/css/fonts.css',
        'themes/medico/assets/layerslider/css/layerslider.css'
    ];

    public $js = [
//        'themes/medico/assets/js/jquery-1.11.1.min.js',
//        'themes/medico/assets/js/bootstrap.min.js',
        'themes/medico/assets/js/modernizr-2.6.2.min.js',
        'themes/medico/assets/js/compressed.js',
        'themes/medico/assets/js/main.js'
    ];
    public $depends = [
//        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
