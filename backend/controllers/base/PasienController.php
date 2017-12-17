<?php
// This class was automatically generated by a giiant build task
// You should not change it manually as it will be overwritten on next build

namespace backend\controllers\base;

use app\models\Pasien;
use backend\models\PasienSearch;
use common\models\User;
use yii\web\Controller;
use yii\web\HttpException;
use yii\helpers\Url;
use yii\filters\AccessControl;
use dmstr\bootstrap\Tabs;
use yii\data\ActiveDataProvider;

/**
* PasienController implements the CRUD actions for Pasien model.
*/
class PasienController extends Controller
{


/**
* @var boolean whether to enable CSRF validation for the actions in this controller.
* CSRF validation is enabled only when both this property and [[Request::enableCsrfValidation]] are true.
*/
public $enableCsrfValidation = false;


/**
* Lists all Pasien models.
* @return mixed
*/
public function actionIndex()
{
    if (\Yii::$app->user->identity->role == 7){
       $searchModel  = new PasienSearch;
       $id_usr = \Yii::$app->user->identity->id;
       $query = Pasien::find()->andWhere('id_user= '.$id_usr);
       $dataProvider = new ActiveDataProvider([
           'query' => $query,
       ]);
   }else{
    $searchModel  = new PasienSearch;
    $dataProvider = $searchModel->search($_GET);
}
Tabs::clearLocalStorage();

Url::remember();
\Yii::$app->session['__crudReturnUrl'] = null;

return $this->render('index', [
    'dataProvider' => $dataProvider,
    'searchModel' => $searchModel,
]);
}

/**
* Displays a single Pasien model.
* @param integer $id_pasien
*
* @return mixed
*/
public function actionView($id_pasien)
{
    \Yii::$app->session['__crudReturnUrl'] = Url::previous();
    Url::remember();
    Tabs::rememberActiveState();

    return $this->render('view', [
        'model' => $this->findModel($id_pasien),
    ]);
}

/**
* Creates a new Pasien model.
* If creation is successful, the browser will be redirected to the 'view' page.
* @return mixed
*/

public function actionCreate()
{
    $model = new Pasien;
    try {
        if ($model->load($_POST) ){
         if($model->validate()){


             $user = new User();
             $user->username = $model->email;
             $user->setPassword($model->password);
             $user->generateAuthKey();
             $user->email = $model->email;
             $user->role = 7;
             if ($user->save()) {
               $query = new \yii\db\Query();
               $showId = $query->select(['id'])
               ->from('user')
               ->orderBy(['id' => SORT_DESC])
               ->limit(1)
               ->all();
               foreach ($showId as $key => $value) {
                $model->id_user = $value['id'];
            }
            $model->save();

            // $pasien = new Pasien();

            // $pasien->nama_pasien = $model->nama_pasien;
            // $pasien->alamat = $model->alamat;
            // $pasien->no_telp_pasien = $model->no_telp_pasien;
            // $pasien->gol_darah = $model->gol_darah;
            // $pasien->jenis_kelamin = $model->jenis_kelamin;
            // $pasien->nik = $model->nik;
            // $pasien->id_kota = $model->id_kota;
            // $pasien->id_provinsi = $model->id_provinsi;
            // $pasien->id_user = $model->id_user;
            // $pasien->email = $model->email;
            // $pasien->password = $model->password;

            

        }  

        return $this->redirect(['view', 'id_pasien' => $model->id_pasien]);
    }
} elseif (!\Yii::$app->request->isPost) {
    $model->load($_GET);
}
} catch (\Exception $e) {
    $msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
    $model->addError('_exception', $msg);
}
return $this->render('create', ['model' => $model]);
}

/**
* Updates an existing Pasien model.
* If update is successful, the browser will be redirected to the 'view' page.
* @param integer $id_pasien
* @return mixed
*/
public function actionUpdate($id_pasien)
{
    $model = $this->findModel($id_pasien);
    if ($model->load($_POST) && $model->save()) {
        return $this->redirect(Url::previous());
    } else {
        return $this->render('update', [
            'model' => $model,
        ]);
    }
}

/**
* Deletes an existing Pasien model.
* If deletion is successful, the browser will be redirected to the 'index' page.
* @param integer $id_pasien
* @return mixed
*/
public function actionDelete($id_pasien)
{
    try {
        $this->findModel($id_pasien)->delete();
    } catch (\Exception $e) {
        $msg = (isset($e->errorInfo[2]))?$e->errorInfo[2]:$e->getMessage();
        \Yii::$app->getSession()->addFlash('error', $msg);
        return $this->redirect(Url::previous());
    }

// TODO: improve detection
    $isPivot = strstr('$id_pasien',',');
    if ($isPivot == true) {
        return $this->redirect(Url::previous());
    } elseif (isset(\Yii::$app->session['__crudReturnUrl']) && \Yii::$app->session['__crudReturnUrl'] != '/') {
        Url::remember(null);
        $url = \Yii::$app->session['__crudReturnUrl'];
        \Yii::$app->session['__crudReturnUrl'] = null;

        return $this->redirect($url);
    } else {
        return $this->redirect(['index']);
    }
}

/**
* Finds the Pasien model based on its primary key value.
* If the model is not found, a 404 HTTP exception will be thrown.
* @param integer $id_pasien
* @return Pasien the loaded model
* @throws HttpException if the model cannot be found
*/
protected function findModel($id_pasien)
{
    if (($model = Pasien::findOne($id_pasien)) !== null) {
        return $model;
    } else {
        throw new HttpException(404, 'The requested page does not exist.');
    }
}
}
