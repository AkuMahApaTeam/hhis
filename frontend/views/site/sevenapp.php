    <script src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/js/jquery.min.js' ?>"></script> 
     <script src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/js/script.js' ?>"></script> 
     <style>
div.box1 {
  width: 50%;
  padding: 0;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  text-align: center;
}
div.container-1 {
  padding: 10px;
}
</style>

<section id="features">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-push-2 clearfix">
                    <div class="section-heading scrollpoint sp-effect3">
                        <h3>PaMedHis<span>  features</span></h3>
                        <span class="divider"></span>
                        <p>Record and Help you to remember your medical history</p>
                    </div>
                </div>
                <div class="col-md-12">
                   
                        <!-- Wrapper for slides -->
                       
                           
                                <div class="row">
                                    <div class="col-md-3 col-sm-6">
                                        <div class="feature scrollpoint sp-effect2">
                                            <div class="icon">
                                                <i class="fa fa-book fa-4x"></i>
                                            </div>
                                            <h4>Medical Record</h4>
                                            <p>We will provide your medical record</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="feature scrollpoint sp-effect2">
                                            <div class="icon">
                                                <i class="fa fa-signal fa-4x"></i>
                                            </div>
                                            <h4>Illness Analytical Graphic</h4>
                                            <p>We will help you analyze your health</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="feature scrollpoint sp-effect1">
                                            <div class="icon">
                                                <i class="fa fa-envelope fa-4x"></i>
                                            </div>
                                            <h4>Sms Notifications</h4>
                                            <p>we will notify you every time you check</p>
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <div class="feature scrollpoint sp-effect1">
                                            <div class="icon">
                                                <i class="fa fa-check-square-o fa-4x"></i>
                                            </div>
                                            <h4>Diagnostic Support</h4>
                                            <p>We will help you to diagnose your patients</p>
                                        </div>
                                    </div>
                                </div>
                </div>
            </div>
        </div>
    </section>

    <section id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-push-1">
                    <h1>Patient <span>Medical History</span> Started</h1>
                    <h4>Work with PaMedhis, getting started from signup as Doctor or Patient</h4>
                </div>
                <div class="btn-group btn-group-justified btn-lg">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                    <a href="<?= Yii::$app->request->baseUrl.'/index.php/site/signup' ?>" class="btn btn-empty side">Signup Doctor</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                      <a href="<?= Yii::$app->request->baseUrl.'/index.php/site/pasiensignup' ?>" class="btn btn-empty side">Signup Pasien</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                     <a href="http://localhost/hhis2/backend/web/site/login" class="btn btn-empty side">Login</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="btn-group btn-group-justified btn-lg">
                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                    <a href="#" class="btn btn-default">
                                        <span class="appstore"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                    <a href="#" class="btn btn-default">
                                        <span class="playstore"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="row">
                                <div class="btn-group scrollpoint sp-effect4">
                                    <a href="#" class="btn btn-default">
                                        <span class="micstore"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="settings">
        <div class="container">
            <div class="row">
            <div class="col-md-6">
                <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/weather.png' ?>" alt="" class="scrollpoint sp-effect3">
                <h2 class="scrollpoint sp-effect3">PaMedHis <span>Web Application </span></h2>
            </div>
            <div class="col-md-6 scrollpoint sp-effect5 box1">
                          <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/dasdokter.png' ?>" class="animated fadeInDown" alt="" style="width:100%;margin: 0">
                    <div class="container-1">
                        <p>Dashboard for doctor</p>
                    </div>
            </div>
        </div>
        </div>
    </section>

    <section id="settings">
        <div class="container">
            <div class="row">
            <div class="col-md-6 scrollpoint sp-effect5 box1">
                          <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/daspasien.png' ?>" class="animated fadeInDown" alt="" style="width:100%;margin: 0">
                    <div class="container-1">
                        <p>Dashboard for patient</p>
                    </div>
            </div>
              <div class="col-md-6">
                <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/weather.png' ?>" alt="" class="scrollpoint sp-effect3">
                <h2 class="scrollpoint sp-effect3">PaMedHis <span>Web Application </span></h2>
            </div>
        </div>
        </div>
    </section>
     


<!--     <section id="packages">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-push-2 clearfix">
                    <div class="section-heading scrollpoint sp-effect3">
                        <h3>PaMedHis<span> App</span></h3>
                        <span class="divider"></span>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/cob1.png' ?>" class="animated fadeInDown" alt="" style="width:45%">
                </div>
                <div class="col-md-6">
                      <img src="<?= Yii::$app->request->baseUrl.'/themes/SevenApp/img/cp.png' ?>" class="animated fadeInDown" alt="" style="width:100%">
                </div>
                    
            </div>
       
        </div>
    </section> -->


 

    

