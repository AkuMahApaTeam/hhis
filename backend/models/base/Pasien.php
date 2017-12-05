<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace app\models\base;

use Yii;
use yii\web\UploadedFile;

/**
 * This is the base-model class for table "pasien".
 *
 * @property integer $id_pasien
 * @property string $nama_pasien
 * @property string $alamat
 * @property string $no_telp_pasien
 * @property string $gol_darah
 * @property string $jenis_kelamin
 * @property string $nik
 * @property integer $id_kota
 * @property integer $id_provinsi
 * @property integer $id_user
 * @property string $image
 * @property string $email 
 * @property string $password 
 *
 * @property \app\models\Riwayat[] $riwayats
 * @property string $aliasModel
 */
abstract class Pasien extends \yii\db\ActiveRecord
{



    /**
     * @inheritdoc
     */
    public $file1;
    public static function tableName()
    {
        return 'pasien';
    }


    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id_kota', 'id_provinsi', 'password'], 'required'],
            [['nik', 'id_kota', 'id_provinsi'], 'integer'],
            [['nama_pasien', 'alamat'], 'string', 'max' => 255],
            [['no_telp_pasien'], 'string', 'max' => 15],
            [['gol_darah'], 'string', 'max' => 2],
            [['jenis_kelamin'], 'string', 'max' => 10],
            ['nik', 'trim'],
            ['nik', 'required'],
            [
                ['nik'], 'unique', 'skipOnError' => true, 
                'targetClass' => Pasien::className(), 
                'targetAttribute' => ['nik' => 'nik'],
                'when' => function($model,$attribute){
                    return $model->{$attribute} !== $model->getOldAttribute($attribute); 
                    //this rules work when attribute nik change 

                },
            ],
            ['email', 'trim'],
            ['email', 'required'],
            ['email', 'email'],
            ['email', 'unique', 
            'targetClass' => 'frontend\models\Pasien', 
            'message' => 'This email address has already been taken.',
            'when' => function($model,$attribute){
                    return $model->{$attribute} !== $model->getOldAttribute($attribute);

                },
            ],
            [['file1'], 'file', 'extensions'=>'png,jpg'],

            [['password'], 'string', 'max' => 25]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id_pasien' => 'Id Pasien',
            'nama_pasien' => 'Nama Pasien',
            'alamat' => 'Alamat',
            'no_telp_pasien' => 'No Telp Pasien',
            'gol_darah' => 'Gol Darah',
            'jenis_kelamin' => 'Jenis Kelamin',
            'nik' => 'Nik',
            'id_kota' => 'Id Kota',
            'id_provinsi' => 'Id Provinsi',
            'id_user' => 'Id User',
            'email' => 'Email', 
            'password' => 'Password', 
              'image' => 'Image',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getRiwayats()
    {
        return $this->hasMany(\app\models\Riwayat::className(), ['id_pasien' => 'id_pasien']);
    }
     public function beforeSave($insert){
    if(parent::beforeSave($insert)){
        if (Yii::$app->request->isPost) {
            $this->file1 = UploadedFile::getInstance($this, 'file1');
            if ($this->file1 && $this->validate()) {

                $this->file1->saveAs('uploads/pasien/' . $this->file1->baseName . '.' .$this->file1->extension);
                $this->image = 'uploads/pasien/'.$this->file1->baseName . '.' .$this->file1->extension;
                return true;
            }
        }
    }
    else{
      return false;
    }
  }




}
