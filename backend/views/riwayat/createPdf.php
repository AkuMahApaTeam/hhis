<?php
use yii\helpers\Url;
?>
<html>
<head>
  <style>
  .tab{
    margin: auto;
  }
  .logo2{
    margin: auto;
  }
</style>
</head>
<body>
  <div class="row" style="text-align:center">

    <h4 style="text-align:center">DOKUMEN RIWAYAT PENYAKIT</h4>
    <h5 style="text-align:center">PSYSICAL ASSASSMENT</h5>
    <?php
    foreach ($dataDokter as $key => $value) {?>
    <table class="tab">
      <tr>
        <td><b>Dokter</b></td>
        <td>:</td>
        <td><p><?php echo $value['nama_dokter'] ?></p></td>
        <td><b>SIP</b></td>
        <td>:</td>
        <td>
          <?php
          foreach ($dataSIP as $key => $valueS) {
            $SIP =  $valueS['no_izin'];
          }

          ?>
          <p><?php echo $SIP ?></p>

        </td>
        <td><b>Alamat</b></td>
        <td>:</td>
        <td><p><?php echo $value['alamat_praktik'] ?></p></td>
        <td><b>Telp</b></td>
        <td>:</td>
        <td><p><?php echo $value['no_telp'] ?></p></td>

      </tr>
    </table>


  </div>
  <hr style="height:3px;color:black">
  <hr style="width:90%;margin-top:-10px;color:black">
  <?php
}
?>
<div class="row">
 <?php foreach ($dataRiwayat as $key => $valueR): ?>
   <p>tanggal periksa : <?php echo $valueR['tgl_periksa'] ?></p>
 <?php endforeach; ?>
 <h4>Biodata Pasien</h4>
 <?php foreach ($dataPasien as $key => $valueP){?>
 <table>
   <tr>
     <td><p>1.</p></td>
     <td><p>Nama</p></td>
     <td>:</td>
     <td><p><?php echo $valueP['nama_pasien'] ?></p></td>
   </tr>
   <tr>
     <td><p>2.</p></td>
     <td><p>Umur</p></td>
     <td>:</td>
     <?php foreach ($dataRiwayat as $key => $valueR): ?>
       <td><p><?php echo $valueR['umur'] ?></p></td>
     <?php endforeach; ?>

   </tr>
   <tr>
     <td><p>3.</p></td>
     <td><p>Jenis Kelamin</p></td>
     <td>:</td>
     <td><p><?php echo $valueP['jenis_kelamin'] ?></p></td>
   </tr>
   <tr>
    <td><p>4.</p></td>
    <td><p>Golongan Darah</p></td>
    <td>:</td>
    <td><p><?php echo $valueP['gol_darah'] ?></p></td>
  </tr>
  <tr>
    <td><p>5.</p></td>
    <td><p>Berat Badan</p></td>
    <td>:</td>
    <?php foreach ($dataRiwayat as $key => $valueR): ?>
      <td><p><?php echo $valueR['berat_badan'] ?></p></td>
    </tr>
    <tr>
      <td><p>6.</p></td>
      <td><p>Tinggi Badan</p></td>
      <td>:</td>
      <td><p><?php echo $valueR['tinggi_badan'] ?></p></td>
    <?php endforeach; ?>
  </tr>
  <tr>
    <td><p>7.</p></td>
    <td><p>Alamat</p></td>
    <td>:</td>
    <td><p><?php echo $valueP['alamat'] ?></p></td>
  </tr>
  <tr>
    <td><p>8.</p></td>
    <td><p>No Telp</p></td>
    <td>:</td>
    <td><p><?php echo $valueP['no_telp_pasien'] ?></p></td>
  </tr>

</table>
<?php }?>
<h4>Pemeriksaan</h4>
<table>
 <?php foreach ($dataRiwayat as $key => $valueR): ?>
   <tr>
     <td>1.</td>
     <td>Keluhan</td>
     <td>:</td>
     <td><p>
       <?php echo $valueR['keluhan_utama'] ?>
     </p>
   </td>
 </tr>

 <tr>
   <td>2.</td>
   <td>Head</td>
   <td>:</td>
   <td><p>
     <?php echo $valueR['head'] ?>
   </p>
 </td>
</tr>
<tr>
 <td>3.</td>
 <td>Neck</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['neck'] ?>
 </p>
</td>
</tr>
<tr>
 <td>4.</td>
 <td>Thorax</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['thorax'] ?>
 </p>
</td>
</tr>
<tr>
 <td>5.</td>
 <td>Abdomen</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['abdomen'] ?>
 </p>
</td>
</tr>
<tr>
 <td>6.</td>
 <td>Ekstremitas</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['ekstremitas'] ?>
 </p>
</td>
</tr>
<tr>
 <td>7.</td>
 <td>Pemeriksa penunjang</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['pemeriksa_penunjang'] ?>
 </p>
</td>
</tr>
<tr>
 <td>8.</td>
 <td>Riwayat Kesehatan Keluarga</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['riwayat_kesehatan_keluarga'] ?>
 </p>
</td>
</tr>
<tr>
 <td>9.</td>
 <td>Diagnosa</td>
 <td>:</td>
 <td><p>
   <?php foreach ($dataPenyakit as $key => $valueD): ?>
     <?php
     if($valueD['id'] == 1){
      echo $valueR['diagnosa_text'];
    }else{
      echo $valueD['nama_penyakit'];
    }
    ?>
  </p>
<?php endforeach; ?>
</td>
</tr>
<tr>
 <td>10.</td>
 <td>Terapi / Penata Laksana</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['larangan'] ?>
 </p>
</td>
</tr>
<tr>
 <td>11.</td>
 <td>Advis</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['advis'] ?>
 </p>
</td>
</tr>
<tr>
 <td>12.</td>
 <td>Tindak Lanjut</td>
 <td>:</td>
 <td><p>
   <?php echo $valueR['perawatan'] ?>
 </p>
</td>
</tr>

<?php endforeach; ?>
</table>
</div>
<footer style="text-align:center">
 <hr style="height:5px">
 <img src="<?php echo Url::to('@web/uploads/logonya.png'); ?>" class="img-responsive logo" style="width: 30px;"><br>
 <i style="margin-top:-10px;font-size:12px">© Copyright Patient Medical History. All Rights Reserved</i>
</footer>
</body>
</html>
