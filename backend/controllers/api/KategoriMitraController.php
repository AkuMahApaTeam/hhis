<?php

namespace backend\controllers\api;

/**
* This is the class for REST controller "KategoriMitraController".
*/

use yii\filters\AccessControl;
use yii\helpers\ArrayHelper;

class KategoriMitraController extends \yii\rest\ActiveController
{
public $modelClass = 'app\models\MasterKategoriMitra';
}
