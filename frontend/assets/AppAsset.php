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
//        //'css/site.css',
//        '//fonts.googleapis.com/css?family=Open+Sans:400italic,300,400,600,700%7CDroid+Serif:300,400,700,400italic',
//        '//fonts.googleapis.com/css?family=Montserrat:400,700',
//        '//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css',
//        'css_new/owl.carousel.css',
//        'css_new/site.css',
//        'css_new/style.css',
//        'css_new/leaflet/leaflet.css',
////        'css_new/leaflet/leaflet.draw.css',
////        'css_new/leaflet/leaflet.contextmenu.css',
////        'css_new/leaflet/leaflet.label.css',
//        oleose

        'themes/Oleose/assets/css/bootstrap.min.css',
        'themes/Oleose/assets/css/animate.css',
        'themes/Oleose/assets/css/font-awesome.min.css',
        'themes/Oleose/assets/css/slick.css',
        'themes/Oleose/assets/js/rs-plugin/css/settings.css',
        'themes/Oleose/assets/css/styles.css'
    ];

    public $js = [
//        '//maps.googleapis.com/maps/api/js?key=AIzaSyDuf28UQoL8gLGHbu2mDWXnuZ19fChrb_A&v=3.exp&libraries=places',
//        '//cdnjs.cloudflare.com/ajax/libs/typeahead.js/0.10.4/dist/typeahead.bundle.min.js',
//        '//cdnjs.cloudflare.com/ajax/libs/typeahead-addresspicker/0.1.4/typeahead-addresspicker.min.js',
//        //'js/leaflet/leaflet.label.js',
//        'js/plugins/superfish.min.js',
//        'js/jquery.ui.min.js',
//        'js/plugins/rangeslider.min.js',
//        'js/plugins/jquery.flexslider-min.js',
//        'js/uou-accordions.js',
//        'js/uou-tabs.js',
//        'js/plugins/select2.min.js',
//        'js/owl.carousel.min.js',
//        'js/gmap3.min.js',
//        'js/bootstrap.js',
//        'js/scripts.js',
//
////        'js/morris/morris.js',
////        'js/morris/raphael.js',
////        'js/main.js',
        'themes/Oleose/assets/js/jquery-1.11.1.min.js',
        'themes/Oleose/assets/js/bootstrap.min.js',
        'themes/Oleose/assets/js/slick.min.js',
        'themes/Oleose/assets/js/placeholdem.min.js',
        'themes/Oleose/assets/js/rs-plugin/js/jquery.themepunch.plugins.min.js',
        'themes/Oleose/assets/js/rs-plugin/js/jquery.themepunch.revolution.min.js',
        'themes/Oleose/assets/js/waypoints.min.js',
        'themes/Oleose/assets/js/scripts.js',
        'themes/Oleose/assets/js/modernizr.custom.32033.js',
//        'https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js',
//        'https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js'

    ];
    public $depends = [
//        'yii\web\YiiAsset',
//        'yii\bootstrap\BootstrapAsset',
    ];
}
