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

        $riwayat = \api\modules\v1\models\Riwayat::find()
            ->select('*')
            ->orderBy(['id_pasien' => SORT_DESC])
            ->all();
        $daftar_penyakit = \api\modules\v1\models\DaftarPenyakit::find()
            ->all();


        $data = [];

        foreach ($riwayat as $model) {

            foreach($daftar_penyakit as $m){
                if($m->id == $model->   diagnosa){
                    $diagnosa = $m->nama_penyakit;
                }
            }

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

            $umr= $model->umur;
            $berban= $model->berat_badan;
            $tingban= $model->tinggi_badan;
            $riwayatkesehatankeluarga = $model->riwayat_kesehatan_keluarga;
            $keluhanutama = $model->keluhan_utama;
            $larangan = $model->larangan;
            $tglperiksas = $model->tgl_periksa;
            $perawatans = $model->perawatan;
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
                'diagnosa' => $diagnosa,
                'larangan' => $larangan,
                'tgl_periksa' => $tglperiksas,
                'perawatan' => $perawatans,
                'advis' => $model->advis,
                'head' => $model->head,
                'neck' => $model->neck,
                'thorax' => $model->thorax,
                'abdomen' => $model->abdomen,
                'ekstremitas' => $model->ekstremitas,
            ];
        }

        return [
            "status" => "sukses",
            "data" => $data
        ];
    }

    public $modelClass = 'api\modules\v1\models\Riwayat';
}
