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
            ->select('nama_dokter')
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $no_telp_dokter = \api\modules\v1\models\Dokter::find()
            ->select('no_telp')
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $alamat_praktik = \api\modules\v1\models\Dokter::find()
            ->select('alamat_praktik')
            ->where(['id_dokter' => $id_dokter])
            ->all();
        $umur = \api\modules\v1\models\Riwayat::find()
            ->select('umur')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $berat_badan= \api\modules\v1\models\Riwayat::find()
            ->select('berat_badan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tinggi_badan = \api\modules\v1\models\Riwayat::find()
            ->select('tinggi_badan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $riwayat_kesehatan_keluarga= \api\modules\v1\models\Riwayat::find()
            ->select('riwayat_kesehatan_keluarga')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $keluhan_utama = \api\modules\v1\models\Riwayat::find()
            ->select('keluhan_utama')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $id_diagnosa =  \api\modules\v1\models\Riwayat::find()
            ->select('diagnosa')
            ->where(['id_pasien' => $id_pasien])
            ->one();
        $diagnosa = \api\modules\v1\models\DaftarPenyakit::find()
            ->select('nama_penyakit')
            ->where(['id' => $id_diagnosa])
            ->all();
        $larangan = \api\modules\v1\models\Riwayat::find()
            ->select('larangan')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $tgl_periksa= \api\modules\v1\models\Riwayat::find()
            ->select('tgl_periksa')
            ->where(['id_pasien' => $id_pasien])
            ->all();
        $perawatan = \api\modules\v1\models\Riwayat::find()
            ->select('perawatan')
            ->where(['id_pasien' => $id_pasien])
            ->all();

        $riwayat = \api\modules\v1\models\Riwayat::find()
            ->where(['id_pasien'=> $id_pasien])->all();
        $dokter = \api\modules\v1\models\Riwayat::find()
            ->where(['id_dokter'=> $id_dokter])->all();
        $pasien = \api\modules\v1\models\Riwayat::find()
            ->where(['id_pasien'=> $id_pasien])->all();

        $data = [];

        foreach ($riwayat as $model) {
            $data[] = [
                'id_riwayat' => $model->id_riwayat,
                'id_pasien' => $model->id_pasien,
                'nama_pasien' => $nama_pasien[0]->nama_pasien,
                'nama_dokter' => $nama_dokter[0]->nama_dokter,
                'no_telp_dokter' => $no_telp_dokter[0]->no_telp,
                'alamat_praktik' => $alamat_praktik[0]->alamat_praktik,
                'umur' => $umur[0]->umur,
                'berat_badan' => $berat_badan[0]->berat_badan,
                'tinggi_badan' => $tinggi_badan[0]->tinggi_badan,
                'riwayat_penyakit_keluarga' => $riwayat_kesehatan_keluarga[0]->riwayat_kesehatan_keluarga,
                'keluhan_utama' => $keluhan_utama[0]->keluhan_utama,
                'diagnosa' => $diagnosa[0]->nama_penyakit,
                'larangan' => $larangan[0]->larangan,
                'tgl_periksa' => $tgl_periksa[0]->tgl_periksa,
                'perawatan' => $perawatan[0]->perawatan,
                'advis' => $model->advis,
                'head' => $model->head,
                'neck' => $model->neck,
                'thorax' => $model->thorax,
                'abdomen' => $model->abdomen,
                'ekstremitas' => $model->ekstremitas
            ];
        }
        return [
            "status" => "sukses",
            "data" => $data
        ];
    }

    public $modelClass = 'api\modules\v1\models\Riwayat';
}
