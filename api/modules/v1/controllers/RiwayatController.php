<?php

namespace api\modules\v1\controllers;

use yii\filters\VerbFilter;
use yii\rest\Controller;

/**
 * Country Controller API
 *
 * @author Budi Irawan <deerawan@gmail.com>
 */
class RiwayatController extends Controller
{
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post', 'delete'],
                ],
            ],
//            'access' => [
//                'class' => \yii\filters\AccessControl::className(),
//                'rules' => [
//                    [
//                        'allow' => true,
//                        'actions' => ['index', 'view', 'create', 'update', 'delete'],
//                        'roles' => ['@']
//                    ],
//                    [
//                        'allow' => false
//                    ]
//                ]
//            ]
        ];
    }

    public function actionView($id_user){
        $id_pasien = \api\modules\v1\models\Pasien::find()
            ->select('id_pasien')
            ->where(['id_user' => $id_user])
            ->one();
        $id_dokter = \api\modules\v1\models\Riwayat::find()
            ->select('id_dokter')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $nama_pasien = \api\modules\v1\models\Pasien::find()
            ->select('nama_pasien')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $nama_dokter = \api\modules\v1\models\Dokter::find()
            ->select(['nama_dokter', 'id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $no_telp_dokter = \api\modules\v1\models\Dokter::find()
            ->select(['no_telp', 'id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $alamat_praktik = \api\modules\v1\models\Dokter::find()
            ->select(['alamat_praktik','id_dokter'])
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $umur = \api\modules\v1\models\Riwayat::find()
            ->select(['umur','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $berat_badan= \api\modules\v1\models\Riwayat::find()
            ->select(['berat_badan','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tinggi_badan = \api\modules\v1\models\Riwayat::find()
            ->select(['tinggi_badan','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $riwayat_kesehatan_keluarga= \api\modules\v1\models\Riwayat::find()
            ->select(['riwayat_kesehatan_keluarga','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->distinct()
            ->all();
        $keluhan_utama = \api\modules\v1\models\Riwayat::find()
            ->select(['keluhan_utama','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $id_diagnosa =  \api\modules\v1\models\Riwayat::find()
            ->select('diagnosa')
            ->where(['id_pasien' => $id_pasien])
            ->one();
        $diagnosa = \api\modules\v1\models\DaftarPenyakit::find()
            ->select(['nama_penyakit','id'])
            ->where(['id' => $id_diagnosa])
            ->all();
        $larangan = \api\modules\v1\models\Riwayat::find()
            ->select(['larangan', 'id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tgl_periksa= \api\modules\v1\models\Riwayat::find()
            ->select(['tgl_periksa', 'id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $perawatan = \api\modules\v1\models\Riwayat::find()
            ->select(['perawatan','id_pasien'])
            ->where(['id_pasien' => $id_pasien])
            ->all();

        $riwayat = \api\modules\v1\models\Riwayat::find()
            ->where(['id_pasien'=> $id_pasien])->all();
        $pasien = \api\modules\v1\models\Riwayat::find()
            ->where(['id_pasien'=> $id_pasien])->all();

        $data = [];

        foreach ($riwayat as $model) {

            $dokter = '';
            foreach ($nama_dokter as $dok) {
                if($dok->id_dokter == $model->id_dokter){
                    $dokter = $dok->nama_dokter;
                }
            }

            $notelpdokter = '';
            foreach ($no_telp_dokter as $telp) {
                if($telp->id_dokter == $model->id_dokter){
                    $notelpdokter = $telp->no_telp;
                }
            }

            $alamatpraktik = '';
            foreach ($alamat_praktik as $almt) {
                if($almt->id_dokter == $model->id_dokter){
                    $alamatpraktik = $almt->alamat_praktik;
                }
            }

            $umr= 0;
            foreach ($umur as $um) {
                if($um->id_pasien == $model->id_pasien){
                    $umr = $um->umur;
                }
            }

            $berban= 0;
            foreach ($berat_badan as $bb) {
                if($bb->id_pasien == $model->id_pasien){
                    $berban = $bb->berat_badan;
                }
            }

            $tingban=0;
            foreach ($tinggi_badan as $tb) {
                if($tb->id_pasien == $model->id_pasien){
                    $tingban = $tb->tinggi_badan;
                }
            }

            $riwayatkesehatankeluarga = '';
            foreach ($riwayat_kesehatan_keluarga as $rkk) {
                if($rkk->id_pasien == $model->id_pasien){
                    $riwayatkesehatankeluarga = $rkk->riwayat_kesehatan_keluarga;
                }
            }

            $keluhanutama = '';
            foreach ($keluhan_utama as $ku) {
                if($ku->id_pasien == $model->id_pasien){
                    $keluhanutama = $ku->keluhan_utama;
                }
            }
//

            $diagnosas = '';
            foreach ($diagnosa as $ds) {
                if($ds->id == $model->diagnosa){
                    $diagnosas = $ds->nama_penyakit;
                }
            }

            $larangans = '';
            foreach ($larangan as $lr) {
                if($lr->id_pasien == $model->id_pasien){
                    $larangans = $lr->larangan;
                }
            }

            $tglperiksas = '';
            foreach ($tgl_periksa as $tglperiksa) {
                if($tglperiksa->id_pasien == $model->id_pasien){
                    $tglperiksas = $tglperiksa->tgl_periksa;
                }
            }

            $perawatans = '';
            foreach ($perawatan as $prw) {
                if($prw->id_pasien == $model->id_pasien){
                    $perawatans = $prw->perawatan;
                }
            }
            $data[] = [
                'id_riwayat' => $model->id_riwayat,
                'id_pasien' => $model->id_pasien,
                'id_dokter' => $model->id_dokter,
                'nama_dokter' => $dokter,
                'no_telp_dokter' => $notelpdokter,
                'alamat_praktik' => $alamatpraktik,
                'umur' => $umr,
                'berat_badan' => $berban,
                'tinggi_badan' => $tingban,
                'riwayat_penyakit_keluarga' => $riwayatkesehatankeluarga,
                'keluhan_utama' => $keluhanutama,
//                'id_diagnosa' => $iddiagnosas,
                'diagnosa' => $diagnosas,
                'larangan' => $larangans,
                'tgl_periksa' => $tglperiksas,
                'perawatan' => $perawatans,
                'advis' => $model->advis,
                'head' => $model->head,
                'neck' => $model->neck,
                'thorax' => $model->thorax,
                'abdomen' => $model->abdomen,
                'ekstremitas' => $model->ekstremitas,
//                'tes' => "nama_pasien" => $nmpasien->nama_pasien
            ];
        }
        return [
            "status" => "sukses",
            "data" => $data
        ];
    }

    public $modelClass = 'api\modules\v1\models\Riwayat';
}
