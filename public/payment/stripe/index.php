<?php
include '../../vardat/const.php';
include '../../config.php';
session_start();
header('Set-Cookie: cross-site-cookie=name; SameSite=None; Secure');

require('phpmailer/phpmailer/PHPMailer.php');
require('phpmailer/phpmailer/SMTP.php');
require('phpmailer/phpmailer/Exception.php');

require('fpdf.php');

dd("test");

$isicoupon = $_SESSION["isikupon"];
$isicoupon = strtoupper($isicoupon);

$fullname = $_SESSION["Fullname"];

date_default_timezone_set('Asia/Jakarta');
$tanggal = date('Ymd');
$jam = date('his');

$shippingpriceid = $_POST['priceid'];
$layananship = $_POST["layananship"];
$hargashipping = $_POST["hargashipping"];
$shipping = $_POST["shipping"];
$nama = $_POST["nama"];
$email = $_POST["email"];

$pecahemail = explode("@", $email);
$hasilemail = $pecahemail[0];
$hasilemailbelakang = $pecahemail[1];
$hasilemail = str_replace(".", "", $hasilemail);
$emailtanpatitik = $hasilemail . '@' . $hasilemailbelakang;

$isipecahkuponsatu = substr($isicoupon, 0, 1);
$isipecahkupondua = substr($isicoupon, 5, 1);
$isipecahkupontiga = substr($isicoupon, 10, 1);

if ($isicoupon == 'EHLFAMILY2021') {
  $tagcoupon = '#EHLFAMILY2021';
  $persdiskon = '20%';
}

if ($isicoupon == 'IMVS2021') {
  $tagcoupon = '#iamvaccinatedsg';
  $persdiskon = '10%';
}

if ($isicoupon == 'SUP20SKY') {
  $tagcoupon = '#skypremium';
  $persdiskon = '20%';
}

if ($isicoupon == 'KOPIBEANS15X' || $isicoupon == 'KOPIBEANS15X') {
  $tagcoupon = '#KOPIBEANS15X';
  $persdiskon = '15%';
}

if ($isipecahkuponsatu == 'S' && $isipecahkupondua == 'U' && $isipecahkupontiga == 'B') {
  $tagcoupon = 'Welcometo#Supresso';
  $persdiskon = '15%';
}

if ($isipecahkuponsatu == 'S' && $isipecahkupondua == 'U' && $isipecahkupontiga == 'P') {
  $tagcoupon = 'Welcometo#Supresso';
  $persdiskon = '10%';
}




$phone = $_POST["phone"];
$alamat = $_POST["alamat1"];
$alamat2 = $_POST["alamat2"];
$alamat3 = $_POST["alamat3"];
$city = $_POST["city"];
$provinsi = $_POST["provin"];
$country = $_POST["state"];
$postcode = $_POST["postcode"];
$notifnews = $_POST["notifnews"];
$addcatatan = $_POST["addcatatan"];
$addcatatan = addslashes($addcatatan);
if (empty($addcatatan)) {
  $addcatatan = '-';
}
$idsr = $_POST["iduser"];

$stingpelanggan = "SELECT * FROM masterpelanggan 
 WHERE iduser = '" . $idsr . "';";
$querypelanggan = $conn->query($stingpelanggan);
if ($querypelanggan->num_rows) {
  $row = mysqli_fetch_array($query, MYSQLI_ASSOC);
  $setujunews = $row['setujunews'];
  $emailly = $row['email'];
  if ($setujunews == 'news') {
    $subscribestatus = 'ok';
  }

  $stringmailblast = "SELECT * FROM mailblast WHERE email = '" . $emailly . "';";
  $querymailblast = $conn->query($stringmailblast);

  if ($querymailblast->num_rows) {

    $subscribestatus = 'ok';
  }
}



if (empty($layananship)) {
  echo "<script>
/*	alert('Please choose your shipping courier ');*/
	window.location.assign('" . $awalalamat . "');
</script>";
  header("Location: https://www.supresso.com/sg/");

  exit();
}

if (empty($nama)) {
  header("Location: https://www.supresso.com/sg/");
  exit();
}


if (empty($email)) {
  header("Location: https://www.supresso.com/sg/");
  exit();
}

/*
$pecahcountry = explode("/", $countryy);
$kodneg = $pecahcountry[0] ;
$country = $pecahcountry[1] ;
*/

$pecah = explode("/", $shipping);
$kurir = $pecah[2];
$kuririd = $pecah[3];

/*
echo '<br>';
echo $nama;
echo '<br>';
echo $email;
echo '<br>';
echo $phone;
echo '<br>';
echo $alamat1;
echo '<br>';
echo $alamat2;
echo '<br>';
echo $alamat3;
echo '<br>'; 
echo $phone;
echo '<br>';
echo $city;
echo '<br>';
echo $country;
echo '<br>';
echo $postcode;
echo '<br>';  
echo $notifnews;
echo '<br>';   
 */


$ambilorderid = 'SELECT nomerorder FROM daftarorder ORDER BY idorder DESC LIMIT 1';
$ambilorderid = "SELECT nomerorder FROM daftarorder WHERE nomerorder NOT LIKE '%.%' ORDER BY idorder DESC LIMIT 1";
$hasilorderid = mysqli_query($conn, $ambilorderid);

if ($hasilorderid->num_rows) {

  $rowambilorderid = mysqli_fetch_array($hasilorderid, MYSQLI_ASSOC);
  $nomerorder = $rowambilorderid['nomerorder'];

  $pecah = explode("/", $nomerorder);
  $hasil = $pecah[0] + 1;
  $idorder = $hasil . "/" . $jamm . $tanggal;
} else {
  // header("location: http://www.icg.id/beta/dar/login");
  $satu = "1";
  //echo " gak dapat nomer ";
  $idorder = $satu . "/" . $tanggal;
}


if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
  $ip = $_SERVER['HTTP_CLIENT_IP'];
} elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
  $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
} else {
  $ip = $_SERVER['REMOTE_ADDR'];
}

$data = explode(".", $ip);
$ip = $data[0] . $data[1] . $data[2] . $data[3];

$noiduser = $ip . $tanggal . $jam;
$sessioniduser = $_SESSION["Noiduser"];
$iduser = $_SESSION["Iduser"];
$idusercart = $_SESSION["Idusercart"];

if ($iduser == '' && $sessioniduser == '' && $idusercart == '') {
  /*
echo '<br>';
echo $sessioniduser;
echo '<br>';
echo $iduser;
echo '<br>';
echo $idusercart;
echo '<br>';     
   */

  $_SESSION["Noiduser"] = $noiduser;
  $_SESSION["Idusercart"] = $noiduser;
} else {
}


if ($iduser != '') {
  $_SESSION["Idusercart"] = $iduser;
  //    echo '5';
} else {
  //  echo '6';
}

$idusercart = $_SESSION["Idusercart"];


$ambilkart = 'SELECT draftcart.namaproduk, draftcart.qty, draftcart.harga, draftcart.berat, masterproduk.sku FROM `draftcart` INNER JOIN masterproduk ON masterproduk.idproduk=draftcart.idproduk WHERE draftcart.iduser ="' . $idsr . '"';
$querykart = $conn->query($ambilkart);
$arraykart = mysqli_fetch_all($querykart, MYSQLI_ASSOC);

$item;
$jumlaharraycart = sizeof($arraykart);
if ($jumlaharraycart >= 2) {
  $jmlarraycart = $jumlaharraycart - 1;
} else {
  $jmlarraycart = $jumlaharraycart;
  $yangsatu = 'ok';
}

if ($country == 'es') {
  //$categoryship = 'Health & Beauty (non-Liquid)';
  $categoryship = 'Dry Food & Supplements';
} else {
  $categoryship = 'Dry Food & Supplements';
}


for ($x = 0; $x < $jmlarraycart; $x++) {
  $berateasyshipp = 0;
  $berateasyshipp = 0.02 * $arraykart[$x]["qty"];
  $qity = $arraykart[$x]["qty"];

  $itemm = "{\"description\": \"'" . $arraykart[$x]["namaproduk"] . "'\",\"sku\": \"sku\",\"actual_weight\": " . $berateasyshipp . ",\"height\": 1,\"width\": 15,\"length\": 15,\"category\": \"$categoryship\",\"declared_currency\": \"SGD\",\"declared_customs_value\": " . $arraykart[$x]["harga"] . ",\"quantity\": " . $qity . "}," . "\r\n";

  $item = $item . $itemm;
}

$berateasyshipp = 0;
$berateasyshipp = 0.02 * $arraykart[$x]["qty"];
$qity = $arraykart[$x]["qty"];

$itemmn =  "{\"description\": \"'" . $arraykart[$x]["namaproduk"] . "'\",\"sku\": \"sku\",\"actual_weight\": " . $berateasyshipp . ",\"height\": 5,\"width\": 15,\"length\": 15,\"category\": \"$categoryship\",\"declared_currency\": \"SGD\",\"declared_customs_value\": " . $arraykart[$x]["harga"] . ",\"quantity\": " . $qity . "}" . "\r\n";
$item = $item . $itemmn;

if ($jmlarraycart == 1) {
  $berateasyshipp = 0;
  $berateasyshipp = 0.1 * $arraykart[0]["qty"];
  $berateasyshippdua = 0.1 * $arraykart[1]["qty"];
  $qity = $arraykart[0]["qty"];
  $qitydua = $arraykart[1]["qty"];
  $itemt =  "{\"description\": \"'" . $arraykart[0]["namaproduk"] . "'\",\"sku\": \"sku\",\"actual_weight\": " . $berateasyshipp . ",\"height\": 5,\"width\": 15,\"length\": 15,\"category\": \"$categoryship\",\"declared_currency\": \"SGD\",\"declared_customs_value\": " . $arraykart[0]["harga"] . ",\"quantity\": " . $qity . "}," . "\r\n";
  $itemr =  "{\"description\": \"'" . $arraykart[1]["namaproduk"] . "'\",\"sku\": \"sku\",\"actual_weight\": " . $berateasyshippdua . ",\"height\": 5,\"width\": 15,\"length\": 15,\"category\": \"$categoryship\",\"declared_currency\": \"SGD\",\"declared_customs_value\": " . $arraykart[1]["harga"] . ",\"quantity\": " . $qitydua . "}" . "\r\n";
  $item = $itemt . $itemr;
}


if ($jmlarraycart == 1 && $yangsatu == 'ok') {
  $berateasyshipp = 0;
  $berateasyshipp = 0.1 * $arraykart[0]["qty"];
  $qity = $arraykart[0]["qty"];

  $item =  "{\"description\": \"'" . $arraykart[0]["namaproduk"] . "'\",\"sku\": \"sku\",\"actual_weight\": " . $berateasyshipp . ",\"height\": 5,\"width\": 15,\"length\": 15,\"category\": \"$categoryship\",\"declared_currency\": \"SGD\",\"declared_customs_value\": " . $arraykart[0]["harga"] . ",\"quantity\": " . $qity . "}" . "\r\n";
  //$item = $item.$itemmn;

}






$ambilcart = 'SELECT * FROM draftcart WHERE iduser = "' . $idsr . '"';
$querycart = $conn->query($ambilcart);
$arraycart = mysqli_fetch_all($querycart, MYSQLI_ASSOC);

$ambilcartuser = 'SELECT * FROM draftcartuser WHERE iduser = "' . $idsr . '"';
$querycartuser = $conn->query($ambilcartuser);
$arraycartuser = mysqli_fetch_array($querycartuser, MYSQLI_ASSOC);

$ambilnegara = 'SELECT * FROM countries';
$querynegara = $conn->query($ambilnegara);
$arraynegara = mysqli_fetch_all($querynegara, MYSQLI_ASSOC);

$kodenegara = $arraycartuser['negara'];
//$postcode = $arraycartuser['kodenegara'];

for ($x = 0; $x < sizeof($arraycart); $x++) {

  $beratnyaa = $arraycart[$x]["berat"];
  $beratnya = $beratnya + $beratnyaa;


  $jumlahqty = $jumlahqty + $arraycart[$x]["qty"];
  $jumlahsubtotprod = $jumlahsubtotprod + $arraycart[$x]["subtotal"];

  $ideproduk = $arraycart[$x]["idproduk"];
  $ambilproducty = "SELECT * FROM masterproduk WHERE idproduk = '" . $ideproduk . "' ";
  $queryproducty = $conn->query($ambilproducty);
  $arrayproducty = mysqli_fetch_array($queryproducty, MYSQLI_ASSOC);

  if ($isicoupon == 'EHLFAMILY2021') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
  }


  if ($isicoupon == 'IMVS2021') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
  }

  if ($isicoupon == 'SUP20SKY') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
  }

  if ($isicoupon == 'KOPIBEANS15X' || $isicoupon == 'KOPIBEANS15X') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
    $hargasli = $arrayproducty["harga"];
    $bentuk = $arrayproducty["kind"];
    $katnem = $arrayproducty["categoryname"];
    if ($katnem != 'giftset' && $katnem != 'bundle') {
      $jmlsubtodiskonbeans = $jmlsubtodiskonbeans + $hargasli;
    }
  }


  if ($isipecahkuponsatu == 'S' && $isipecahkupondua == 'U' && $isipecahkupontiga == 'B') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
  }

  if ($isipecahkuponsatu == 'S' && $isipecahkupondua == 'U' && $isipecahkupontiga == 'P') {
    $arraycart[$x]["shortdescription"] = '';
    $arraycart[$x]["harga"] = $arrayproducty["harga"];
  }



  if ($arraycart[$x]["shortdescription"] != 'giftset') {
    $jumlahsubtotdiscon = $jumlahsubtotdiscon + $arraycart[$x]["subtotal"];
  }

  if ($arraycart[$x]["shortdescription"] == 'giftset') {
    $bundlee = 'ya';
  } else {
    $bundlei = 'tidak';
  }

  $bodyproductt = '<tr>
		          <td width="840" style="border-bottom: solid 1px #d4d4d4;">
			     	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
				     	<tr>
						<td width="200px">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase;">
								<img src="https://www.supresso.com/sg/img/' . $arraycart[$x]["gambar"] . '" style="display: block;" width="100%" height="auto">
							</p>
						</td>
						<td width="540">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase;">' . $arraycart[$x]["namaproduk"] . '</p>
						</td>
						<td width="100px">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase; text-align: center;">' . $arraycart[$x]["qty"] . '</p>
						</td>
					</tr>
				</table>
			</td>
		</tr>
				';
  $bodyproduct = $bodyproduct . $bodyproductt;
}

if ($isicoupon == "ONE10STEF" || $isicoupon == "one10stef") {
  if ($jumlahqty >= 40) {
    $wanstaf = "ya";
  } else {
    $wanstaf = "tidak";
  }
} else {
  $wanstaf = "ya";
}



$sqlcoupon = "SELECT * FROM mastercoupon WHERE kodecoupon = '" . $isicoupon . "' ";
//$sqlcoupon = "SELECT * FROM mastercoupon WHERE iduser = '".$idsr."' ";
$resultcoupon = $conn->query($sqlcoupon);
$rowresultcoupon = mysqli_fetch_array($resultcoupon, MYSQLI_ASSOC);

$nominalpersen = $rowresultcoupon['nominalpersen'];
$nominalbulat = $rowresultcoupon['nominalbulat'];
$tipe = $rowresultcoupon['tipe'];
$jumlahpakai = $rowresultcoupon['jumlahpakai'];
$minimumorder = $rowresultcoupon['minimumorder'];
$membercoupon = $rowresultcoupon['member'];

$iduserkupon = $rowresultcoupon['iduser'];

if ($iduserkupon == '0') {
  $statususerkupon = 'ok';
} else {

  if ($iduserkupon == $idusercart && $subscribestatus == 'ok') {
    $statususerkupon = 'ok';
  } else {
    $statususerkupon = 'tidak';
  }
}

if ($membercoupon == 'ya' && !empty($fullname)) {
  $lidmembercoupon = "ok";
} elseif ($membercoupon == 'tidak') {
  $lidmembercoupon = "ok";
} else {
  $lidmembercoupon = "tidak";
}


if ($resultcoupon->num_rows) {
  $adacouponya = "1";
} else {
  $adacouponya = "2";
}

$jumlsbtotle = $jumlahsubtotprod;
/*
if($jumlahsubtotprod >= $minimumorder  && $lidmembercoupon == 'ok' && $wanstaf == 'ya' && $statususerkupon == 'ok'){

*/

if ($jumlahsubtotprod >= $minimumorder  && $lidmembercoupon == 'ok' && $wanstaf == 'ya') {

  if ($tipe == "persen") {
    $nominalbulat = 0;
    $persen = $nominalpersen * 0.01;
    if ($isicoupon == "KOPIBEANS15X" || $isicoupon == "KOPIBEANS15X") {
      $jumlahnominalpersen = $persen * $jmlsubtodiskonbeans;
      $jmldisconya = $jumlahnominalpersen;
      $jmldisconya = number_format($jmldisconya, 2);
    } else {
      $jumlahnominalpersen = $persen * $jumlahsubtotdiscon;
      $jmldisconya = $jumlahnominalpersen;
      $jmldisconya = number_format($jmldisconya, 2);
    }
  } else {
    $nominalpersen = 0;
    $jumlahnominalpersen = 0;
    $jmldisconya = $nominalbulat;
    $jmldisconya = number_format($jmldisconya, 2);
  }
  $jumlahsubtotprod = $jumlahsubtotprod - $jmldisconya;
}

$subtotall = $jumlahsubtotprod + $hargashipping;
//$subtotall = $subtotall - $jmldisconya;
$subtotalle = number_format($subtotall, 2);
$olahsubtotal = explode(".", $subtotalle);
$subtotel = $olahsubtotal['0'] . $olahsubtotal['1'];



$status = "on-hold";
$payment = "stripe";
if (empty($jmldisconya)) {
  $totdiscon = "0";
} else {
  $totdiscon = $jmldisconya;
}
$totpajak =  "0";
$shippingprice = "$hargashipping";
$totalorder = $subtotall;
$pengiriman = $_POST['kurir'];
$pengiriman = $kurir;
$namalengkap = $nama;
$firtsname = "-";
$lastname = "-";
$negara = $country;
$kota = $city;
$kecamatan = "-";
$kodepos = $postcode;
$company = "-";
$phone = $phone;
$subtotall = $jumlahsubtotprod;

$GLOBALS['arraycart'] = $arraycart;
$GLOBALS['nomerorder'] = $idorder;
$GLOBALS['iduser'] = $idsr;
$GLOBALS['tanggalorder'] = $tanggal;
$GLOBALS['jamorder'] = $jam;
$GLOBALS['status'] = $status;
$GLOBALS['itemsubtotal'] = $subtotall;
$GLOBALS['discon'] = $jmldisconya;
$GLOBALS['tax'] = $totpajak;
$GLOBALS['shippingprice'] = $shippingprice;
$GLOBALS['ordertotal'] = $totalorder;
$GLOBALS['payment'] = $payment;
$GLOBALS['pengiriman'] = $pengiriman;
$GLOBALS['namalengkap'] = $namalengkap;
$GLOBALS['firtsname'] = $firtsname;
$GLOBALS['lastname'] = $lastname;
$GLOBALS['negara'] = $negara;
$GLOBALS['provinsi'] = $provinsi;
$GLOBALS['kota'] = $kota;
$GLOBALS['kecamatan'] = $kecamatan;
$GLOBALS['alamat'] = $alamat;
$GLOBALS['kodepos'] = $kodepos;
$GLOBALS['company'] = $company;
$GLOBALS['email'] = $email;
$GLOBALS['phone'] = $phone;
if (!empty($alamat2)) {
  $alamatawb = $alamat . ' | ' . $alamat2 . ', ' . $kodepos;
} else {
  $alamatawb = $alamat . ', ' . $kodepos;
}

$statusawb = '-';
$statustrack = '-';

if (empty($GLOBALS['itemsubtotal'])) {
  echo "<script>
/*	alert('Please try again ');*/
	window.location.assign('" . $awalalamat . "');
</script>";
  header("Location: https://www.supresso.com/sg/");

  exit();
}


$insertdaftarorder = "INSERT INTO daftarorder (
    
    nomerorder, 
    iduser, 
    tanggalorder, 
    jamorder, 
    status,
    statustrack,
    itemsubtotal, 
    discon,
    coupon,
    kodekupon,
    persdiskon,
    tax, 
    shippingprice, 
    ordertotal, 
    payment, 
    pengiriman, 
    namalengkap,
    namalengkapawb,
    firtsname, 
    lastname, 
    negara, 
    provinsi, 
    kota, 
    kecamatan, 
    alamat,
    alamatawb,
    alamatdua,
    kodepos,
    company, 
    email,
    emailtanpatitik,
    phone,
    phoneawb,
    addcatatan,
    addcatatanawb,
    statusawb,
    notifnews) VALUE 
    ('" . $idorder . "', 
    '" . $idsr . "', 
    '" . $tanggal . "', 
    '" . $jam . "', 
    '" . $status . "',
    '" . $statustrack . "',
    '" . $jumlsbtotle . "', 
    '" . $totdiscon . "',
    '" . $tagcoupon . "',
    '" . $isicoupon . "',
    '" . $persdiskon . "',
    '" . $totpajak . "', 
    '" . $shippingprice . "', 
    '" . $totalorder . "', 
    '" . $payment . "', 
    '" . $pengiriman . "',
    '" . $namalengkap . "',
    '" . $namalengkap . "',
    '" . $firtsname . "', 
    '" . $lastname . "', 
    '" . $negara . "', 
    '" . $provinsi . "', 
    '" . $kota . "', 
    '" . $kecamatan . "', 
    '" . $alamat . "',
    '" . $alamatawb . "',
    '" . $alamat2 . "',
    '" . $postcode . "', 
    '" . $company . "',
    '" . $email . "',
    '" . $emailtanpatitik . "',
    '" . $phone . "',
    '" . $phone . "',
    '" . $addcatatan . "',
    '" . $addcatatan . "',
    '" . $statusawb . "',
    '" . $notifnews . "')";


if ($conn->query($insertdaftarorder) === TRUE) {
} else {
  echo "Error insert Daftarorder: " . $conn->error;
}

$statusemail = 'dari order';

$insertemailsudahorder = "INSERT INTO emailsudahorder (
    email,
    emailtanpatitik,
    status,
    tanggal,
    jam,
    kode,
    sudahpakai) VALUE 
    (
    '" . $email . "', 
    '" . $emailtanpatitik . "', 
    '" . $statusemail . "',   
    '" . $tanggal . "',
    '" . $jam . "',
    '-',
    '-'
   )";


if ($conn->query($insertemailsudahorder) === TRUE) {
}


$review = '';

for ($x = 0; $x < sizeof($arraycart); $x++) {

  $idiproduk = $arraycart[$x]["idproduk"];
  $ambilproductyy = "SELECT * FROM masterproduk WHERE idproduk = '" . $idiproduk . "' ";
  $queryproductyy = $conn->query($ambilproductyy);
  $arrayproductyy = mysqli_fetch_array($queryproductyy, MYSQLI_ASSOC);

  $hargaprodukasli = $arrayproductyy['harga'];
  $txtdiskon = $arrayproductyy['diskon'];
  $bwhnama = $arrayproductyy['bawahnama'];

  if ($bwhnama == '500g' || $bwhnama == '1000g' || $bwhnama == '100g') {
    $namproduk = $arraycart[$x]["namaproduk"] . ' ' . $bwhnama;
  } else {
    $namproduk = $arraycart[$x]["namaproduk"];
  }

  $insertdaftarorderdetail = "INSERT INTO daftarorderdetail (
    
    nomerorder, 
    iduser, 
    idproduct, 
    namaproduk, 
    gambar, 
    hargaproduk,
    hargabelumdiskon, 
    discon,
    txtdiskon,
    tax, 
    qty, 
    subtotalproduk,
    note,
    review
    ) VALUE 
    ('" . $idorder . "', 
    '" . $idsr . "', 
    '" . $arraycart[$x]["idproduk"] . "', 
    '" . $arraycart[$x]["namaproduk"] . "', 
    '" . $arraycart[$x]["gambar"] . "', 
    '" . $arraycart[$x]["harga"] . "',
    '" . $hargaprodukasli . "', 
    '" . $totdiscon . "', 
    '" . $txtdiskon . "', 
    '" . $arraycart[$x]["tax"] . "', 
    '" . $arraycart[$x]["qty"] . "', 
    '" . $arraycart[$x]["subtotal"] . "',
    '" . $arraycart[$x]["note"] . "',
    '" . $review . "'
    )";


  if ($conn->query($insertdaftarorderdetail) === TRUE) {
  } else {
    echo "Error insert Daftarorder: " . $conn->error;
  }
}

$sqldeldraftcart = "DELETE FROM draftcart WHERE iduser='" . $idsr . "' ";

if ($conn->query($sqldeldraftcart) === TRUE) {
} else {
}

/*

$ngr = strtoupper($negara);
$kta = strtoupper($city);

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/shipment/v1/shipments");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "{
  \"platform_name\": \"Supresso Shop\",
  \"platform_order_number\": \"$idorder\",
  \"selected_courier_id\": \"$kuririd\",
  \"destination_country_alpha2\": \"$ngr\",
  \"destination_city\": \"$kta\",
  \"destination_postal_code\": \"0\",
  \"destination_state\": \"null\",
  \"destination_name\": \"$namalengkap\",
  \"destination_address_line_1\": \"$alamat\",
  \"destination_address_line_2\": null,
  \"destination_phone_number\": \"$phone\",
  \"destination_email_address\": \"$email\",
  \"items\": [
    {
      \"description\": \"Supresso Coffee\",
      \"sku\": \"test\",
      \"actual_weight\": 1.2,
      \"height\": 10,
      \"width\": 15,
      \"length\": 20,
      \"category\": \"Food\",
      \"declared_currency\": \"SGD\",
      \"declared_customs_value\": 100
    }
  ]
}");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Authorization: Bearer prod_bbzjPNveJC+gSLXI24f+oVEMMmyzO+LW2OWokIBqPhw="
));


$response = curl_exec($ch);
curl_close($ch);
*/


$ngr = strtoupper($negara);
$kta = strtoupper($city);
$prv = strtoupper($provinsi);

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/shipment/v1/shipments");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "{
  \"platform_name\": \"Supresso Shop\",
  \"platform_order_number\": \"$idorder\",
  \"selected_courier_id\": \"$kuririd\",
  \"destination_country_alpha2\": \"$ngr\",
  \"destination_city\": \"$kta\",
  \"destination_postal_code\": \"$postcode\",
  \"destination_state\": \"$prv\",
  \"destination_name\": \"$namalengkap\",
  \"destination_address_line_1\": \"$alamat\",
  \"destination_address_line_2\": \"$alamat2\",
  \"destination_phone_number\": \"$phone\",
  \"destination_email_address\": \"$email\",
  \"total_actual_weight\": \"$beratnya\",
  \"items\": [
  $item
  ]
}");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Authorization: Bearer prod_bbzjPNveJC+gSLXI24f+oVEMMmyzO+LW2OWokIBqPhw="
));

$response = curl_exec($ch);
curl_close($ch);

//var_dump($response);

/*
echo $kta;
echo '<br>';
echo $ngr;
echo '<br>';
echo $idorder;
echo '<br>';
echo $kuririd;
echo '<br>';
echo $namalengkap;
echo '<br>';
echo $alamat;
echo '<br>';
echo $phone;
echo '<br>';
echo $email;
echo '<br>';
*/

if ($negara == 'sg') {
  $negara = 'Singapore';
}

if ($negara == 'id') {
  $negara = 'Indonesia';
}

class PDF extends FPDF
{
  protected $y;
  // Page header
  function PdfHeader()
  {
    $this->SetFont('Arial', '', 15);
    $this->Cell(0, 10, 'INVOICE', 0, 1, 'R');

    $this->SetFont('Arial', '', 8);
    $this->Cell(0, 6, 'Supresso Coffee Singapore', 0, 1, 'R');
    $this->Cell(0, 6, '333A Orchard Road #03-11 Mandarin Gallery', 0, 1, 'R');
    $this->Cell(0, 6, '238897', 0, 1, 'R');
    $this->Cell(0, 6, 'Singapore', 0, 1, 'R');
    $this->SetX(100); //The next cell will be set 100 units to the right
    $this->Image('ikon-supresso.png', 10, 6, 30);
    $this->Ln(2);
    $this->Cell(0, 0, '', 1, 1);
    $this->Ln(2);
  }

  function OrderId()
  {
    $this->SetFont('Arial', '', 12);
    $this->Cell(0, 7, 'Order ID: ' . $GLOBALS['idorder'] . '', 0, 1);
    $this->SetFont('Arial', '', 10);
    $this->Cell(0, 5, 'Thanks for your order. It is on-hold until we confirm that payment has been received.', 0, 1);
    $this->Cell(0, 5, 'In the meantime, here is a reminder of what you ordered:', 0, 1);
  }


  function DeleveryInfo()
  {

    $this->y = $this->GetY();
    $this->Rect(10, $this->y + 5, 190, 38);

    $this->SetFont('Arial', '', 10);
    // $this->SetLeftMargin(20);
    $this->Ln(8);
    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, 'Delivery address:', 0, 0);
    $this->Cell(30, 5.3, 'Order Date: ', 0, 0);
    $this->Cell(0, 5.3, $GLOBALS['tanggalorder'], 0, 1);

    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, $GLOBALS['alamat'], 0, 0);
    $this->Cell(30, 5.3, 'Delivery Service: ', 0, 0);
    $this->Cell(0, 5.3, $GLOBALS['pengiriman'], 0, 1);

    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, $GLOBALS['kota'], 0, 0);
    $this->Cell(30, 5.3, 'Buyer Name: ', 0, 0);
    $this->Cell(0, 5.3, $GLOBALS['namalengkap'], 0, 1);

    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, $GLOBALS['kodepos'], 0, 0);
    $this->Cell(30, 5.3, 'Seller Name: ', 0, 0);
    $this->Cell(0, 5.3, 'Supresso Coffee', 0, 1);

    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, '', 0, 0);
    $this->Cell(30, 5.3, '', 0, 0);
    $this->Cell(0, 5.3, '', 0, 1);

    $this->Cell(6, 5.3, '', 0, 0);
    $this->Cell(80, 5.3, '', 0, 0);
    $this->Cell(30, 5.3, '', 0, 0);
    $this->Cell(0, 5.3, '', 0, 1);
    $this->Ln(8);
  }

  function OrderTitle()
  {

    $this->Cell(2.5, 0, '', 0, 0);

    $this->SetFont('Arial', '', 11);
    $this->Cell(20, 10, 'Quantity', 1, 0, 'C');
    $this->Cell(115, 10, 'Product Details', 1, 0, 'C');
    $this->Cell(25, 10, 'Price ', 1, 0, 'C');
    $this->Cell(25, 10, 'Sub-Total ', 1, 1, 'C');

    $this->y = $this->GetY();
  }

  function Orderdetails()
  {


    for ($i = 0; $i < sizeof($GLOBALS['arraycart']); $i++) {


      $hargadte = '$ ' . $GLOBALS['arraycart'][$i]["harga"];
      $subtotaldte = '$ ' . $GLOBALS['arraycart'][$i]["subtotal"];


      $this->Cell(2.5, 0, '', 0, 0);
      $this->SetFont('Arial', '', 11);
      $this->Cell(20, 30, $GLOBALS['arraycart'][$i]["qty"], 1, 0, 'C');
      $this->Rect(32.5, $this->y, 115, 30);
      $this->SetFont('Times', '', 11);
      $this->Cell(115, 8, '', 0, 1, 'L');
      $this->SetFont('Arial', '', 9);
      $this->Cell(22.5, 0, '', 0, 0);
      $this->Cell(115, 5, '', 0, 1, 'L');
      $this->Cell(22.5, 0, '', 0, 0);
      $this->Cell(115, 5, $GLOBALS['arraycart'][$i]["namaproduk"], 0, 1, 'L');
      $this->Cell(22.5, 0, '', 0, 0);
      $this->Cell(115, 5, '', 0, 1, 'L');
      $this->Cell(22.5, 0, '', 0, 0);
      $this->Cell(115, 5, '', 0, 0, 'L');
      $this->Rect(147.5, $this->y - 23, 25, 30);
      $this->Cell(25, -18, $hargadte, 0, 0, 'C');
      $this->Rect(172.5, $this->y - 23, 25, 30);
      $this->Cell(25, -18, $subtotaldte, 0, 0, 'C');
      $this->Cell(.01, 7, '', 0, 1);
      $this->y = $this->GetY();
    }
  }


  function OrderTotal()
  {


    //	$orderAmt = '$'.number_format(1586523);
    //	$deliveryAmt = '$'.number_format(158);

    $orderAmt = '$ ' . $GLOBALS['itemsubtotal'];
    $deliveryAmt = '$ ' . $GLOBALS['shippingprice'];
    $ordertotya = '$ ' . $GLOBALS['ordertotal'];

    $w1 = $this->GetStringWidth($orderAmt) + 3;
    $w2 = $this->GetStringWidth($deliveryAmt) + 3;
    $w = 190 - ($w1 + $w2);


    $this->Rect(12.5, $this->y, 185, 16);
    $this->SetFont('Arial', '', 11);
    $this->Ln(2);

    $this->Cell(150, 7, 'Order : ', 0, 0, 'R');
    $this->Cell(30, 7, $orderAmt, 0, 1, 'R');

    $this->Cell(150, 7, 'Delivery : ', 0, 0, 'R');
    $this->Cell(30, 7, $deliveryAmt, 0, 1, 'R');

    $this->Rect(12.5, $this->y, 185, 12);
    $this->SetFont('Times', '', 15);
    $this->Cell(2.5, 0, '', 0, 0);
    $this->Ln(3);
    $this->Cell(145, 7, 'Order Total : ', 0, 0, 'R');
    $this->Cell(35, 7, $ordertotya, 0, 1, 'R');
    $this->Ln(8);
  }


  // Page footer
  function PdfFooter()
  {
    //		$btmFst = 'Thanks for buying on Amazon Marketplace.To  provide feedback for the seller please visit';
    $siteUrl = 'www.supresso.com';
    //		$btmSec = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id cum nisi voluptatem odit dolores, qui inventore";
    //		$btmTrd = "voluptate, vitae repudiandae voluptatibus.";

    //		$this->SetLeftMargin(10);
    $this->SetFont('Arial', '', 10.9);
    //		$this->Cell(154,5, $btmFst ,0,0);
    $this->SetTextColor(0, 0, 0);
    $this->Cell(0, 5, $siteUrl, 0, 1, 'R');
    $this->SetTextColor(0, 0, 0);
    //		$this->Cell(0,5, $btmSec ,0,1);
    //		$this->Cell(0,5, $btmTrd ,0,1);

  }

  function Footer()
  {
    // Position at 1.5 cm from bottom
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial', 'B', 10);
    // Page number
    $this->Cell(0, 5, $this->PageNo(), 0, 0, 'R');
  }
}


$mail = new PHPMailer\PHPMailer\PHPMailer();

try {

  $pdf = new PDF();

  $pdf->AliasNbPages();
  $pdf->AddPage();
  $pdf->PdfHeader();
  $pdf->OrderId();
  $pdf->DeleveryInfo();
  $pdf->OrderTitle();
  $pdf->Orderdetails();
  $pdf->OrderTotal();
  $pdf->PdfFooter();
  $pdf->SetFont('Arial', 'B', 16);

  //  $pdf->AliasNbPages();
  //    $pdf->AddPage();
  //   $pdf->SetFont('Times', '', 12);
  //     $pdf->Cell(80, 12, 'FILE NAME : '.basename($_FILES["file"]["name"]), 0, 1);
  //     $pdf->Cell(80, 12, 'EMAIL: '.$_POST['email'], 0, 1);
  //  $pdf->Cell(80, 12, 'IMAGE:', 0, 1);
  //  $pdf->Image($target_file, 20, 70, 150);

  //  $filename = $_POST['email'].basename($_FILES["file"]["name"]).".pdf";
  $filename = "invoice" . $idsr . ".pdf";
  $pdf->Output('F', 'pdfs/' . $filename, true);

  /*
    //Server settings                   
    $mail->isSMTP();                                            // Send using SMTP
    $mail->Host     = 'supresso.com';
    $mail->SMTPAuth = true;
    $mail->Username = 'ecommerce@supresso.com';
    $mail->Password = 's{Vi(jz?B#sZ';
    $mail->SMTPSecure = 'ssl';
    $mail->Port     = 465;

    //Recipients
    $mail->setFrom('ecommerce@supresso.com', 'Supresso');
  //  $mail->addAddress($_POST['email'], $nama);
  //  $mail->addBcc('dm@indraco.com', 'Owner');
  //  $mail->addBcc('marco@indraco.com', 'Owner');
 //   $mail->addBcc('pristine@indraco.com', 'Owner');
   
   
  
   
    $mail->addAttachment('./pdfs/'.$filename);
    // Content
    $mail->isHTML(true);                                  // Set email format to HTML
   
    $mail->Subject = 'Request Order';
    
    $mail->Body    = '<html>
<head>
</head>
<body>

	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
		<tr>
			<td width="840">
				<p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 50px; margin-right: 0; font-family: sans-serif;">
					<a href="https://www.supresso.com/" target="blank" style="text-decoration: none;">
						<img src="https://supresso.com/sg/img/ikon-supresso.png" style="display: block; width: 100px; height: 100px;">
					</a>
				</p>
				<p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 50px; margin-right: 0; font-family: sans-serif;">
					<strong>Hi <span>'.$namalengkap.'</span>,</strong>
					<br><br>
					We are excited to let you know that your order has been prepared and will be shipped out soon!
				</p>
				<p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 50px; margin-right: 0; font-family: sans-serif;">
					<strong>Here are the details</strong>
				</p>
			</td>
		</tr>	
	</table>

	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
		<tr>
			<td width="180"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">Order No.</p></td>
			<td width="20"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">:</p></td>
			<td width="640"><p style="padding: 0; margin-top: 0; font-family: sans-serif;"><strong>'.$idorder.'</strong></p></td>
		</tr>
		<tr>
			<td width="180"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">Courier</p></td>
			<td width="20"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">:</p></td>
			<td width="640"><p style="padding: 0; margin-top: 0; font-family: sans-serif;"><strong>'.$kurir.'</strong></p></td>
		</tr>
		<tr>
			<td width="180" style="vertical-align: top;"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">Address</p></td>
			<td width="20" style="vertical-align: top;"><p style="padding: 0; margin-top: 0; font-family: sans-serif;">:</p></td>
			<td width="640" style="vertical-align: top;"><p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 50px; margin-right: 0; font-family: sans-serif; max-width: 360px;"><strong>'.$alamat.', '.$kota.' '.$kodepos.' - '.$negara.'</strong></p></td>
		</tr>
	</table>

	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center" style="margin-bottom: 50px;">
		<tr>
			<th width="840" style="border-bottom: solid 1px #323232;">
				<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
					<tr>
						<th width="740px">
							<p style="padding: 0; margin-top: 0; font-family: sans-serif; text-align: left;">Product Item</p>
						</th>
						<th width="100px">
							<p style="padding: 0; margin-top: 0; font-family: sans-serif; text-align: center;">Qty.</p>
						</th>
					</tr>
				</table>
			</th>
		</tr>
			'.$bodyproduct.'
	</table>

	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
		<tr>
			<td width="840">
				<p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 17px; margin-right: 0; font-family: sans-serif;">
					If there is any mistake with the details above, please contact us as soon as possible!
				</p>
				<p style="padding: 0; margin-top: 0; margin-left: 0; margin-bottom: 41px; margin-right: 0; font-family: sans-serif;">
				Visit online Order Status to view the most up-to-date status of your order.
				</p>
			</td>
		</tr>
			     <tr>
					<td style="text-align: center;">
						<a href="https://www.supresso.com/sg/dashboard" style="background-color: #fd4f00; color: #fff; padding: .5rem 1rem; border-radius: .25rem; text-decoration: none;">
							Order Status
						</a>
					</td>
				</tr>
		<br>
		
	</table>

</body>
</html>';

    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

   // $mail->send();
    $msg .= ' And,email has been sent';
    */
} catch (Exception $e) {
  $msg .= " Mail could not be sent. Mailer Error: {$mail->ErrorInfo}";
}


?>
<script src="<?php echo $awalalamat; ?>vendor/js/jquery-3.5.1.slim.min.js"></script>

<!-- Load Stripe.js on your website. -->
<script src="https://js.stripe.com/v3/"></script>

<!-- Load translation files and libraries. -->
<style type="text/css">
body {
    background-color: #fff;
}

.container {
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
}

.box-one {
    width: 180px;
    height: 180px;
    border-radius: 50%;
    border-top: 3px solid transparent;
    border-right: 3px solid transparent;
    border-bottom: 3px solid #f96d1f;
    border-left: 3px solid #f96d1f;
    animation: rotationa 2s linear infinite;
}

.box-two {
    width: 145px;
    height: 145px;
    position: absolute;
    left: 9%;
    top: 9%;
    transform: translate(-20%, -20%);
    border-radius: 50%;
    border-top: 3px solid transparent;
    border-right: 3px solid transparent;
    border-bottom: 3px solid #f96d1f;
    border-left: 3px solid #f96d1f;
    animation: rotationb 2s linear infinite;
}

.box-three {
    width: 80px;
    height: 80px;
    position: absolute;
    left: 27%;
    top: 27%;
    transform: translate(-40%, -40%);
    border-radius: 50%;
    border-top: 3px solid #f96d1f;
    border-right: 3px solid #f96d1f;
    border-bottom: 3px solid transparent;
    border-left: 3px solid transparent;
    animation: rotationc 2s linear infinite;
}

@keyframes rotationa {
    0% {
        transform: rotate(0deg);
    }

    100% {
        transform: rotate(-360deg);
    }
}

@keyframes rotationb {
    0% {
        transform: rotate(0deg);
    }

    100% {
        transform: rotate(360deg);
    }
}

@keyframes rotationc {
    0% {
        transform: rotate(0deg);
    }

    100% {
        transform: rotate(-360deg);
    }
}
</style>

<div class="container">
    <div class="box-one"></div>
    <div class="box-two"></div>
    <div class="box-three"></div>
    <br>

</div>

<div class="container"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    <h1>Loading</h1>
</div>


<button onclick="myFunction()" style="display:none" id="submit"></button>
<script>
document.getElementById("submit").click();

function myFunction() {


    // Create a Checkout Session with the selected quantity
    var createCheckoutSession = function(stripe) {
        var totalamount = parseInt(<?php echo $subtotel ?>);

        return fetch("/sg/payment/stripe/create-checkout-session.php", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                totalamount: totalamount,
            }),
        }).then(function(result) {
            return result.json();
        });
    };

    // Handle any errors returned from Checkout
    var handleResult = function(result) {
        if (result.error) {
            var displayError = document.getElementById("error-message");
            displayError.textContent = result.error.message;
        }
    };

    /* Get your Stripe publishable key to initialize Stripe.js */
    fetch("/sg/payment/stripe/config.php")
        .then(function(result) {
            return result.json();
        })
        .then(function(json) {
            window.config = json;
            var stripe = Stripe(config.publicKey);

            // Setup event handler to create a Checkout Session on submit

            createCheckoutSession().then(function(data) {
                stripe
                    .redirectToCheckout({
                        sessionId: data.sessionId,
                    })
                    .then(handleResult);
            });

        });

}
</script>