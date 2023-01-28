<?php 

//use PHPMailer\PHPMailer\PHPMailer;
//use PHPMailer\PHPMailer\SMTP;
//use PHPMailer\PHPMailer\Exception;
require('phpmailer/phpmailer/PHPMailer.php');
require('phpmailer/phpmailer/SMTP.php');
require('phpmailer/phpmailer/Exception.php');

require 'vendor/autoload.php';
require('fpdf.php');

include '../../vardat/const.php';
include '../../config.php';
session_start();
date_default_timezone_set('Asia/Jakarta');
$tanggal = date('Ymd');
$jam = date('his');

$hargashipping = $_POST["hargashipping"];
$shipping = $_POST["shipping"];
$nama = $_POST["nama"];
$email = $_POST["email"];
$phone = $_POST["phone"];
$alamat = $_POST["alamat1"];
$alamat2 = $_POST["alamat2"];
$alamat3 = $_POST["alamat3"];
$city = $_POST["city"];
$postcode = $_POST["postcode"];
$country = $_POST["state"];
$idsr = $_POST["iduser"];
$addcatatan = $_POST["addcatatan"];
$addcatatan = addslashes($addcatatan);
if(empty($addcatatan)){
$addcatatan = '-';    
}


if(empty($hargashipping)){
echo "<script>
/*	alert('Please choose your shipping courier ');*/
	window.location.assign('".$awalalamat."');
</script>";    
header("Location: https://www.supresso.com/sg/");

exit();
} 

if(empty($nama)){
header("Location: https://www.supresso.com/sg/");
exit();
} 


if(empty($email)){
header("Location: https://www.supresso.com/sg/");
exit();
} 

/*
$pecahcountry = explode("/", $countryy);
$kodneg = $pecahcountry[0] ;
$country = $pecahcountry[1] ;
 */
 
$pecah = explode("/", $shipping);
$kurir = $pecah[2] ;
$kuririd = $pecah[3] ;
 
//$ambilorderid = 'SELECT nomerorder FROM daftarorder ORDER BY idorder DESC LIMIT 1';
$ambilorderid = "SELECT nomerorder FROM daftarorder WHERE nomerorder NOT LIKE '%.%' ORDER BY idorder DESC LIMIT 1";

$hasilorderid = mysqli_query($conn, $ambilorderid);  

 if($hasilorderid->num_rows){

 $rowambilorderid = mysqli_fetch_array($hasilorderid, MYSQLI_ASSOC);
 $nomerorder = $rowambilorderid['nomerorder'];
 
 $pecah = explode("/", $nomerorder);
$hasil = $pecah[0] + 1;
$idorder = $hasil."/".$jamm.$tanggal ;
 }
 else{
    // header("location: http://www.www.supresso.com/beta/dar/login");
    $satu = "1";
   //echo " gak dapat nomer ";
$idorder = $satu."/".$tanggal ;
 }

 
 if(!empty($_SERVER['HTTP_CLIENT_IP'])){
      $ip=$_SERVER['HTTP_CLIENT_IP'];
    }
    elseif(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){
      $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
    }
    else{
      $ip=$_SERVER['REMOTE_ADDR'];
    }

$data = explode("." , $ip);
$ip = $data[0].$data[1].$data[2].$data[3];

$noiduser = $ip.$tanggal.$jam;
$sessioniduser = $_SESSION["Noiduser"];
$iduser = $_SESSION["Iduser"];
$idusercart = $_SESSION["Idusercart"];

 
$ambilkart = 'SELECT draftcart.namaproduk, draftcart.harga, draftcart.berat, masterproduk.sku FROM `draftcart` INNER JOIN masterproduk ON masterproduk.idproduk=draftcart.idproduk WHERE draftcart.iduser ="'.$idsr.'"';
$querykart = $conn->query($ambilkart);
$arraykart = mysqli_fetch_all($querykart, MYSQLI_ASSOC); 

$item;
$jumlaharraycart = sizeof($arraykart);
$jmlarraycart = $jumlaharraycart - 1;
for($x = 0; $x < $jmlarraycart; $x++){

 $itemm ="{\"description\": \"'".$arraykart[$x]["namaproduk"]."'\",\"sku\": \"sku\",\"actual_weight\": ".$arraykart[$x]["berat"].",\"height\": 10,\"width\": 10,\"length\": 10,\"category\": \"Dry Food & Supplements\",\"declared_currency\": \"SGD\",\"declared_customs_value\": 1},"."\r\n";

$item = $item.$itemm; 

} 

$itemmn =  "{\"description\": \"'".$arraykart[$x]["namaproduk"]."'\",\"sku\": \"sku\",\"actual_weight\": ".$arraykart[$x]["berat"].",\"height\": 10,\"width\": 10,\"length\": 10,\"category\": \"Dry Food & Supplements\",\"declared_currency\": \"SGD\",\"declared_customs_value\": 1}"."\r\n";
$item = $item.$itemmn;



 
$ambilcart = 'SELECT * FROM draftcart WHERE iduser = "'.$idsr.'"';
$querycart = $conn->query($ambilcart);
$arraycart = mysqli_fetch_all($querycart, MYSQLI_ASSOC); 

$ambilcartuser = 'SELECT * FROM draftcartuser WHERE iduser = "'.$idsr.'"';
$querycartuser = $conn->query($ambilcartuser);
$arraycartuser = mysqli_fetch_array($querycartuser, MYSQLI_ASSOC); 

$ambilnegara = 'SELECT * FROM countries';
$querynegara = $conn->query($ambilnegara);
$arraynegara = mysqli_fetch_all($querynegara, MYSQLI_ASSOC); 

$kodenegara = $arraycartuser['negara'];
//$postcode = $arraycartuser['kodenegara'];

for($x = 0; $x < sizeof($arraycart); $x++){
$jumlahqty = $jumlahqty + $arraycart[$x]["qty"];
$jumlahsubtotprod = $jumlahsubtotprod + $arraycart[$x]["subtotal"];

$bodyproductt = '<tr>
		          <td width="840" style="border-bottom: solid 1px #d4d4d4;">
			     	<table cellpadding="0" cellspacing="0" border="0" width="840" align="center">
				     	<tr>
						<td width="200px">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase;">
								<img src="https://www.supresso.com/sg/img/'.$arraycart[$x]["gambar"].'" style="display: block;" width="100%" height="auto">
							</p>
						</td>
						<td width="540">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase;">'.$arraycart[$x]["namaproduk"].'</p>
						</td>
						<td width="100px">
							<p style="padding: 0; margin: 0; font-family: sans-serif; text-transform: uppercase; text-align: center;">'.$arraycart[$x]["qty"].'</p>
						</td>
					</tr>
				</table>
			</td>
		</tr>
				';
$bodyproduct = $bodyproduct . $bodyproductt;

}

$jumlahsubtotprodd = $jumlahsubtotprod + $hargashipping;
$jumlahsubtotprodd = number_format($jumlahsubtotprodd, 2);
$olahsubtotal = explode("." , $jumlahsubtotprodd);
$subtotal = $olahsubtotal['0'] . $olahsubtotal['1'];

$status = "on-hold";
$payment = "alipay";
$totdiscon = "0";
$totpajak =  "0";
$shippingprice = "$hargashipping";
$totalorder = $jumlahsubtotprodd;
$pengiriman = $_POST['kurir'];
$pengiriman = $kurir;
$namalengkap = $nama;
$firtsname = "-";
$lastname = "-";
$negara = $country;
$provinsi = "-";
$kota = $city;
$kecamatan = "-";
$kodepos = $postcode ;
$company = "-";
$phone = $phone;
$subtotall = $jumlahsubtotprod;
/*
echo '<br>';
echo $idorder;
echo '<br>';
echo $idusercart;
echo '<br>';
echo $status;
echo '<br>';     
echo $subtotal;
echo '<br>';
echo $totdiscon;
echo '<br>';
echo $totpajak;
echo '<br>';     
echo $shippingprice;
echo '<br>';
echo $totalorder;
echo '<br>';
echo $payment;
echo '<br>';     
echo $pengiriman;
echo '<br>';
echo $namalengkap;
echo '<br>';
echo $firtsname;
echo '<br>';
echo $lastname;
echo '<br>';
echo $negara;
echo '<br>';
echo $provinsi;
echo '<br>';     
echo $kota;
echo '<br>';
echo $kecamatan;
echo '<br>';
echo $alamat;
echo '<br>';
echo $kodepos;
echo '<br>';
echo $company;
echo '<br>';
echo $phone;
*/
$GLOBALS['arraycart'] = $arraycart;
$GLOBALS['nomerorder'] = $idorder;
$GLOBALS['iduser'] = $idsr;
$GLOBALS['tanggalorder'] = $tanggal;
$GLOBALS['jamorder'] = $jam;
$GLOBALS['status'] = $status;
$GLOBALS['itemsubtotal'] = $subtotall;
$GLOBALS['discon'] = $totdiscon;
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


$insertdaftarorder = "INSERT INTO daftarorder (
    
    nomerorder, 
    iduser, 
    tanggalorder, 
    jamorder, 
    status, 
    itemsubtotal, 
    discon, 
    tax, 
    shippingprice, 
    ordertotal, 
    payment, 
    pengiriman, 
    namalengkap, 
    firtsname, 
    lastname, 
    negara, 
    provinsi, 
    kota, 
    kecamatan, 
    alamat,
    alamatdua,
    kodepos, 
    company, 
    email, 
    phone,
    addcatatan) VALUE 
    ('".$idorder."', 
    '".$idsr."', 
    '".$tanggal."', 
    '".$jam."', 
    '".$status."', 
    '".$subtotall."', 
    '".$totdiscon."', 
    '".$totpajak."', 
    '".$shippingprice."', 
    '".$totalorder."', 
    '".$payment."', 
    '".$pengiriman."',
    '".$namalengkap."', 
    '".$firtsname."', 
    '".$lastname."', 
    '".$negara."', 
    '".$provinsi."', 
    '".$kota."', 
    '".$kecamatan."', 
    '".$alamat."',
    '".$alamat2."',
    '".$kodepos."', 
    '".$company."', 
    '".$email."', 
    '".$phone."',
    '".$addcatatan."')";


if ($conn->query($insertdaftarorder) === TRUE) {
      echo '<script>
//	alert("Daftarorder inserted successfully");
</script>' ;
  
} else {
    echo "Error insert Daftarorder: " . $conn->error;
}	


for($x = 0; $x < sizeof($arraycart); $x++){

$idiproduk = $arraycart[$x]["idproduk"];
$ambilproductyy = "SELECT * FROM masterproduk WHERE idproduk = '".$idiproduk."' ";
$queryproductyy = $conn->query($ambilproductyy);
$arrayproductyy = mysqli_fetch_array($queryproductyy, MYSQLI_ASSOC);
                  
$hargaprodukasli = $arrayproductyy['harga'];

$insertdaftarorderdetail = "INSERT INTO daftarorderdetail (
    
    nomerorder, 
    iduser, 
    idproduct, 
    namaproduk, 
    gambar, 
    hargaproduk,
    hargabelumdiskon, 
    discon, 
    tax, 
    qty, 
    subtotalproduk,
    note
    ) VALUE 
    ('".$idorder."', 
    '".$idsr."', 
    '".$arraycart[$x]["idproduk"]."', 
    '".$arraycart[$x]["namaproduk"]."', 
    '".$arraycart[$x]["gambar"]."', 
    '".$arraycart[$x]["harga"]."',
    '".$hargaprodukasli."',
    '".$totdiscon."', 
    '".$arraycart[$x]["tax"]."', 
    '".$arraycart[$x]["qty"]."', 
    '".$arraycart[$x]["subtotal"]."',
    '".$arraycart[$x]["note"]."'
    )";


if ($conn->query($insertdaftarorderdetail) === TRUE) {
      echo '<script>
//	alert("Daftarorder inserted successfully");
</script>' ;
  
} else {
    echo "Error insert Daftarorder: " . $conn->error;
}


}

$sqldeldraftcart = "DELETE FROM draftcart WHERE iduser='".$idsr."' ";

if ($conn->query($sqldeldraftcart) === TRUE) {

}else{

}


/*
$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/shipment/v1/shipments");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "{
  \"platform_name\": \"Supresso Shop\",
  \"platform_order_number\": \"'.$idorder.'\",
  \"selected_courier_id\": \"'.$kuririd.'\",
  \"destination_country_alpha2\": \"'.$negara.'\",
  \"destination_city\": \"'.$kota.'\",
  \"destination_postal_code\": \"'.$kodepos.'\",
  \"destination_state\": \"NY\",
  \"destination_name\": \"'.$namalengkap.'\",
  \"destination_address_line_1\": \"'.$alamat.'\",
  \"destination_address_line_2\": null,
  \"destination_phone_number\": \"'.$phone.'\",
  \"destination_email_address\": \"'.$email.'\",
  \"items\": [
 
 '.$itemproduct.'
 
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
  \"destination_postal_code\": \"$kodepos\",
  \"destination_state\": \"null\",
  \"destination_name\": \"$namalengkap\",
  \"destination_address_line_1\": \"$alamat\",
  \"destination_address_line_2\": \"$alamat2\",
  \"destination_phone_number\": \"$phone\",
  \"destination_email_address\": \"$email\",
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

	
class PDF extends FPDF
{
	protected $y; 
	// Page header
	function PdfHeader()
	{
	    $this->SetFont('Arial','',15);
	    $this->Cell(0,10,'INVOICE',0,1,'R');
	    
	    $this->SetFont('Arial','',8);
		$this->Cell(0,6,'Supresso Coffee Singapore',0,1,'R');
		$this->Cell(0,6,'333A Orchard Road #03-11 Mandarin Gallery',0,1,'R');
		$this->Cell(0,6,'238897',0,1,'R');
		$this->Cell(0,6,'Singapore',0,1,'R');
		$this->SetX(100); //The next cell will be set 100 units to the right
		$this->Image('ikon-supresso.png',10,6,30);
		$this->Ln(2);
		$this->Cell(0,0,'',1,1);
		$this->Ln(2);
	}

	function OrderId()
	{
	    $this->SetFont('Arial','',12);
		$this->Cell(0,7,'Order ID: '.$GLOBALS['idorder'].'',0,1);
		$this->SetFont('Arial','',10);
		$this->Cell(0,5,'Thanks for your order. It is on-hold until we confirm that payment has been received.',0,1);
    	$this->Cell(0,5,'In the meantime, here is a reminder of what you ordered:',0,1);
		
	}


	function DeleveryInfo()
	{	
	    
		$this->y = $this->GetY();
		$this->Rect(10,$this->y+5, 190, 38);
		
	    $this->SetFont('Arial','',10);
	    // $this->SetLeftMargin(20);
	    $this->Ln(8);
	    $this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, 'Delivery address:',0,0);
	    $this->Cell(30,5.3, 'Order Date: ',0,0);
	    $this->Cell(0,5.3, $GLOBALS['tanggalorder'],0,1);

	    $this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, $GLOBALS['alamat'],0,0);
	    $this->Cell(30,5.3, 'Delivery Service: ',0,0);
	    $this->Cell(0,5.3, $GLOBALS['pengiriman'],0,1);

	    $this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, $GLOBALS['kota'],0,0);
	    $this->Cell(30,5.3, 'Buyer Name: ',0,0);
	    $this->Cell(0,5.3, $GLOBALS['namalengkap'],0,1);

		$this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, $GLOBALS['kodepos'],0,0);
	    $this->Cell(30,5.3, 'Seller Name: ',0,0);
	    $this->Cell(0,5.3, 'Supresso Coffee',0,1);

	    $this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, '',0,0);
	    $this->Cell(30,5.3, '',0,0);
	    $this->Cell(0,5.3, '',0,1);

	    $this->Cell(6,5.3, '',0,0);
	    $this->Cell(80,5.3, '',0,0);
	    $this->Cell(30,5.3, '',0,0);
	    $this->Cell(0,5.3, '',0,1);
		$this->Ln(8);

	   
	}

	function OrderTitle(){

 		$this->Cell(2.5,0,'', 0, 0);
		
	    $this->SetFont('Arial','',11);
	    $this->Cell(20,10, 'Quantity',1,0,'C');
	    $this->Cell(115,10, 'Product Details',1,0,'C');
	    $this->Cell(25,10, 'Price ',1,0,'C');
	    $this->Cell(25,10, 'Sub-Total ',1,1,'C');

	    $this->y = $this->GetY();
	}

	function Orderdetails(){

 		
		for ($i=0; $i < sizeof($GLOBALS['arraycart']) ; $i++) { 
		    
		    $hargadte = '$ '.$GLOBALS['arraycart'][$i]["harga"];
            $subtotaldte = '$ '.$GLOBALS['arraycart'][$i]["subtotal"];
		    
		    
			$this->Cell(2.5,0,'', 0, 0);
			$this->SetFont('Arial','',11);
		    $this->Cell(20,30, $GLOBALS['arraycart'][$i]["qty"],1,0,'C');
	    	$this->Rect(32.5,$this->y, 115, 30);
	    	$this->SetFont('Times','',11);
	        $this->Cell(115,8, '',0,1,'L');
	        $this->SetFont('Arial','',9);
	        $this->Cell(22.5,0,'', 0, 0);
	        $this->Cell(115,5, '',0,1,'L');
	        $this->Cell(22.5,0,'', 0, 0);
	        $this->Cell(115,5, $GLOBALS['arraycart'][$i]["namaproduk"],0,1,'L');
	        $this->Cell(22.5,0,'', 0, 0);
	        $this->Cell(115,5, '',0,1,'L');
	        $this->Cell(22.5,0,'', 0, 0);
	        $this->Cell(115,5, '',0,0,'L');
	    	$this->Rect(147.5,$this->y-23, 25, 30);
		    $this->Cell(25,-18,$hargadte,0,0,'C');
		    $this->Rect(172.5,$this->y-23, 25, 30);
		    $this->Cell(25,-18, $subtotaldte,0,0,'C');
		    $this->Cell(.01,7,'', 0, 1);
		    $this->y = $this->GetY();
		}
	    

	    
	}


	function OrderTotal(){


	//	$orderAmt = '$'.number_format(1586523);
	//	$deliveryAmt = '$'.number_format(158);

	    $orderAmt = '$ '.$GLOBALS['itemsubtotal'];
		$deliveryAmt = '$ '.$GLOBALS['shippingprice'];

		
		$w1 = $this->GetStringWidth($orderAmt)+3;
		$w2 = $this->GetStringWidth($deliveryAmt)+3;
		$w = 190-( $w1 + $w2);
   	

		$this->Rect(12.5,$this->y, 185, 16);
		$this->SetFont('Arial','',11);
		$this->Ln(2);

	    $this->Cell(150,7, 'Order : ',0,0,'R');
	    $this->Cell(30,7, $orderAmt ,0,1,'R');

	    $this->Cell(150,7, 'Delivery : ',0,0,'R');
	    $this->Cell(30,7, $deliveryAmt ,0,1,'R');

	    $this->Rect(12.5,$this->y, 185, 12);
		$this->SetFont('Times','',15);
		$this->Cell(2.5,0,'', 0, 0);
		$this->Ln(3);
		$this->Cell(145,7, 'Order Total : ',0,0,'R');
	    $this->Cell(35,7, '$ '.$GLOBALS['ordertotal'] ,0,1,'R');
	    $this->Ln(8);
	}


	// Page footer
	function PdfFooter()
	{	
		$btmFst = 'Thanks for buying on Amazon Marketplace.To  provide feedback for the seller please visit';
		$siteUrl = 'www.supresso.com';
		$btmSec = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Id cum nisi voluptatem odit dolores, qui inventore";
		$btmTrd = "voluptate, vitae repudiandae voluptatibus.";

//		$this->SetLeftMargin(10);
		$this->SetFont('Arial','',10.9);
//		$this->Cell(154,5, $btmFst ,0,0);
		$this->SetTextColor(0,0,0);
		$this->Cell(0,5, $siteUrl ,0,1,'R');
		$this->SetTextColor(0,0,0);
//		$this->Cell(0,5, $btmSec ,0,1);
//		$this->Cell(0,5, $btmTrd ,0,1);
	    
	}

	function Footer(){
		// Position at 1.5 cm from bottom
		$this->SetY(-15);
		// Arial italic 8
		$this->SetFont('Arial','B',10);
		// Page number
		$this->Cell(0,5, $this->PageNo() ,0,0,'R');
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
$pdf->SetFont('Arial','B',16);
    
  //  $pdf->AliasNbPages();
//    $pdf->AddPage();
 //   $pdf->SetFont('Times', '', 12);
 //     $pdf->Cell(80, 12, 'FILE NAME : '.basename($_FILES["file"]["name"]), 0, 1);
 //     $pdf->Cell(80, 12, 'EMAIL: '.$_POST['email'], 0, 1);
  //  $pdf->Cell(80, 12, 'IMAGE:', 0, 1);
  //  $pdf->Image($target_file, 20, 70, 150);
  
  //  $filename = $_POST['email'].basename($_FILES["file"]["name"]).".pdf";
    $filename = "invoice".$idsr.".pdf";
    $pdf->Output('F', 'pdfs/' .$filename, true);

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
   // $mail->addAddress($_POST['email'], 'Customer');
  //  $mail->addBcc('dm@indraco.com', 'Owner');
  //  $mail->addBcc('marco@indraco.com', 'Owner');
   // $mail->addBcc('pristine@indraco.com', 'Owner');


   
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

//    $mail->send();
    $msg .= ' And,email has been sent';

} catch (Exception $e) {
    $msg .= " Mail could not be sent. Mailer Error: {$mail->ErrorInfo}";
}


?>
<script src="<?php echo $awalalamat;?>vendor/js/jquery-3.5.1.slim.min.js"></script>
<script src="https://js.stripe.com/v3/"></script>
<button style="display:none" id="pay" onclick="myFunction()">Pay By Alipay</button>

<script type="text/javascript">
document.getElementById("pay").click();


function myFunction() {
var stripe = Stripe('pk_live_2GG0IUCQdkKG87xzIeLKGSym004fesBRAl');	 
      stripe.createSource({
          type: 'alipay',
          amount: <?php echo $subtotal?>,
          currency: 'sgd',
       
          owner: {
            email: 'dm@indraco.com',
          },
          redirect: {
            return_url: 'https://www.supresso.com/sg/payment/alipay/charge.php',
          },
        }).then(function(result) {
          window.location.replace(result.source.redirect.url);
        });
}
</script>




