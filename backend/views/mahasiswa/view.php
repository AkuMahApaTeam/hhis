<?php

use dmstr\helpers\Html;
use yii\helpers\Url;
use yii\grid\GridView;
use yii\widgets\DetailView;
use yii\widgets\Pjax;
use dmstr\bootstrap\Tabs;

/**
 * @var yii\web\View $this
 * @var app\models\Mahasiswa $model
 */
$copyParams = $model->attributes;

$this->title = "Detail " . Yii::t('app', 'Mahasiswa');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Mahasiswas'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => (string)$model->nama_lengkap, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'View';
?>
<div class="giiant-crud mahasiswa-view">

    <!-- flash message -->
    <?php if (\Yii::$app->session->getFlash('deleteError') !== null) : ?>
        <span class="alert alert-info alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span></button>
            <?= \Yii::$app->session->getFlash('deleteError') ?>
        </span>
    <?php endif; ?>
    <div class="clearfix crud-navigation">

        <!-- menu buttons -->
        <div class='pull-left'>
            <?= Html::a(
                '<span class="fa fa-pencil"></span> ' . 'Edit',
                ['update', 'id' => $model->id],
                ['class' => 'btn btn-info']) ?>

            <?= Html::a(
                '<span class="fa fa-plus"></span> ' . 'New',
                ['create'],
                ['class' => 'btn btn-success']) ?>
        </div>

        <div class="pull-right">
            <?= Html::a('<span class="fa fa-list"></span> '
                . 'Full list', ['index'], ['class' => 'btn btn-default']) ?>
        </div>

    </div>
    <br clear="all">

    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Detail </h3>
        </div>

        <div class="box-body">
            <?php $this->beginBlock('app\models\Mahasiswa'); ?>

            <?= DetailView::widget([
                'model' => $model,
                'attributes' => [
                    [
                        'label' => 'Foto',
                        'format' => 'raw',
                        'value' => Html::img("../uploads/mahasiswa/foto/" . $model->foto, ['class' => 'img', 'width' => '150', 'height' => 'auto']),
                    ],
                    'nama_lengkap',
                    'nimrn',
                    'tempat_lahir',
                    'tanggal_lahir',
                    'alamat',
                    'tahun_masuk',

// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::attributeFormat
                    [
                        'format' => 'html',
                        'attribute' => 'fakultas',
                        'value' => ($model->getFakultas0()->one() ? Html::a($model->getFakultas0()->one()->nama_fakultas, ['fakultas/view', 'id' => $model->getFakultas0()->one()->id,]) : '<span class="label label-warning">?</span>'),
                    ],
// generated by schmunk42\giiant\generators\crud\providers\RelationProvider::attributeFormat
                    [
                        'format' => 'html',
                        'attribute' => 'jurusan',
                        'value' => ($model->getJurusan0()->one() ? Html::a($model->getJurusan0()->one()->nama_jurusan, ['jurusan/view', 'id' => $model->getJurusan0()->one()->id,]) : '<span class="label label-warning">?</span>'),
                    ],
                    [
                        'attribute'=>'aprroved',
                        'format'=>'raw',
                        'value'=>call_user_func(function($data){
                            if($data->aprroved == 1){
                                return "<span class=\"label bg-red\">Belum Valid</span>";
                            }
                            return "<span class=\"label bg-green\">Valid</span>";

                        },$model),
                    ],
                ],
            ]); ?>


            <hr/>

            <div id="map" class="col-md-12" style="height: 450px">
                haha
            </div>

            <?= Html::a('<span class="fa fa-trash"></span> ' . 'Delete', ['delete', 'id' => $model->id],
                [
                    'class' => 'btn btn-danger',
                    'data-confirm' => '' . 'Are you sure to delete this item?' . '',
                    'data-method' => 'post',
                ]); ?>
            <?php $this->endBlock(); ?>

            <?php $this->beginBlock('donasi'); ?>

            <?php
            $bulan = ['januari', 'februari', 'maret', 'april', 'mei', 'juni', 'juli', 'agustus', 'september', 'oktober', 'november', 'desember'];
            ?>
            <table class="table table-responsive table-striped">

                <tr>
                    <?php
                    foreach ($bulan as $month) {
                        echo "<th>$month</th>";
                    }
                    ?>
                </tr>
                <tr>
                    <?php
                    foreach ($bulan as $month) {

                        $donasi = \app\models\base\DonasiRutin::find()->where([
                            'id_mahasiswa' => $model->id,
                            'bulan' => $month,
                            'tahun' => date('Y'),
                        ])->count();

                        if ($donasi == 0) {
                            echo "<td>" . Html::a("<i class='fa fa-check'></i>", ['mahasiswa/pay', 'id' => $model->id, 'bln' => $month], ['class' => 'btn btn-default btn-sm']) . "</td>";
                        } else {
                            echo "<td>" . Html::a("<i class='fa fa-check'></i>", ['mahasiswa/pay', 'id' => $model->id, 'bln' => $month], ['class' => 'btn btn-sm disabled']) . "</td>";

                        }
                    }
                    ?>
                </tr>
            </table>
            <?php $this->endBlock() ?>


            <?= Tabs::widget(
                [
                    'id' => 'relation-tabs',
                    'encodeLabels' => false,
                    'items' => [
                        [
                            'label' => '<b class=""># ' . $model->id . '</b>',
                            'content' => $this->blocks['app\models\Mahasiswa'],
                            'active' => true,
                        ],
                        [
                            'label' => '<b class="">Donasi</b>',
                            'content' => $this->blocks['donasi'],

                        ],

                    ]
                ]
            );
            ?>
        </div>




    </div>

    <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-aqua">
                    <i class="fa fa-calendar"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Donasi Rutin</span>
                    <span class="info-box-number">
                        Rp.<?= number_format(\app\models\DonasiRutin::find()->where(["id_mahasiswa"=>$model->id,"valid"=>1])->sum("jumlah"), 0, "", ".") ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-red">
                    <i class="fa fa-calendar-check-o"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Donasi Event</span>
                    <span class="info-box-number">
                        Rp.<?= number_format(\app\models\DonasiEvent::find()->where(["donatur"=>$model->id,"valid"=>1])->sum("jumlah"), 0, "", ".") ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="info-box">
                <span class="info-box-icon bg-green">
                    <i class="fa fa-hand-grab-o"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Donasi</span>
                    <span class="info-box-number">
                        <?=\app\models\DonasiRutin::find()->where(["id_mahasiswa"=>$model->id,"valid"=>1])->count() + \app\models\DonasiEvent::find()->where(["donatur"=>$model->id,"valid"=>1])->count()?> <small>Kali</small>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
        </div>
        </di
</div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAmPFHFLM57QXkvvEAs6LSKD1q7mmlvf5o&callback=initMap" async
        defer></script>
<script src="<?= Yii::$app->request->baseUrl . "/js/maphandler.js"; ?>"></script>
<script>
    function initMap() {

        var mapProp = {
            center: new google.maps.LatLng(-7.250445, 112.768845),
            zoom: 16,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        var map = new google.maps.Map(document.getElementById("map"), mapProp);
        // Create a map object and specify the DOM element for display.

        var mapHandler = new MapHandler(map);

        var point = {
            lat: Number(<?=$model->lat?>),
            lng: Number(<?=$model->lng?>)
        };
        console.log(point);

        mapHandler.addMarker(point);
        map.panTo(new google.maps.LatLng(point.lat, point.lng));

    }

</script>

