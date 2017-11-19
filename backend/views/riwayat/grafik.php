
<?php
foreach ($dataProvider as $key) {
     $b[] = ($key['namanya']);
     $a[] = (int)($key['diagno']);
 }
//print_r($b);
// foreach($dataProvider as $values){ 
//  $a[0]= ($values['regional']); 
//  $c[]= ($values['regional']); 
//  $b[]= array(
//     'type'=> 'column', 
//     'name' =>$values['namanya'], 
//     'data' => array((int)$values['jmlmsisdn'], (int)$values['jmlba'],(int)$values['jmlcb'], (int)$values['jmlcbu']) ); 
// }
?>
<?=
\dosamigos\highcharts\HighCharts::widget([
    'clientOptions' => [
        'chart' => [
                'type' => 'bar'
        ],
        'title' => [
             'text' => 'Grafik Riwayat Penyakit yang Pernah Dialami'
             ],
        'xAxis' => [
            'categories' => $b
        ],
        'yAxis' => [
            'title' => [
                'text' => 'Jumlah'
            ]
        ],
        'series' => [
            ['name' => 'Pernah berita sebanyak x kali', 'data' => $a]
           // ['name' => 'John', 'data' => [5, 7, 3,1,2]]
        ]
    ]
]);
 
?>