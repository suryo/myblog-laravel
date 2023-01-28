<?php

include '../../vardat/const.php';
include '../../config.php';

$ambilcart = 'SELECT * FROM daftarorderdetail WHERE nomerorder = "22/20201109"';
$querycart = $conn->query($ambilcart);
$arraycart = mysqli_fetch_all($querycart, MYSQLI_ASSOC); 

$ambilcartuser = 'SELECT * FROM daftarorder WHERE idorder = "163"';
$querycartuser = $conn->query($ambilcartuser);
$arraycartuser = mysqli_fetch_array($querycartuser, MYSQLI_ASSOC); 

$idorder = $arraycartuser['nomerorder'];
$negara = $arraycartuser['negara'];
$city = $arraycartuser['kota'];
$ngr = strtoupper($negara);
$kta = strtoupper($city);
$postcode = $arraycartuser['kodepos'];
$namalengkap = $arraycartuser['namalengkap'];
$alamat = $arraycartuser['alamat'];
$phone = $arraycartuser['phone'];
$email = $arraycartuser['email'];


$item;
$jumlaharraycart = sizeof($arraycart);
$jmlarraycart = $jumlaharraycart - 1;
for($x = 0; $x < $jmlarraycart; $x++){

 $itemm ="{\"description\": \"'".$arraycart[$x]["namaproduk"]."'\",\"sku\": \"test\",\"actual_weight\": 1,\"height\": 10,\"width\": 10,\"length\": 10,\"category\": \"Dry Food & Supplements\",\"declared_currency\": \"SGD\",\"declared_customs_value\": 1},"."\r\n";

$item = $item.$itemm; 

} 

 $itemmn =  "{\"description\": \"'".$arraycart[$x]["namaproduk"]."'\",\"sku\": \"test\",\"actual_weight\": 1,\"height\": 10,\"width\": 10,\"length\": 10,\"category\": \"Dry Food & Supplements\",\"declared_currency\": \"SGD\",\"declared_customs_value\": 1}"."\r\n";
$item = $item.$itemmn;
$itemuser ='';
/*

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/shipment/v1/shipments");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "{
  \"platform_name\": \"Supresso Shop\",
  \"platform_order_number\": \"#45er34\",
  \"selected_courier_id\": \"6c60e7d8-5234-4738-9327-c702a6f7e941\",
  \"destination_country_alpha2\": \"$ngr\",
  \"destination_city\": \"$kta\",
  \"destination_postal_code\": \"$postcode\",
  \"destination_state\": \"null\",
  \"destination_name\": \"$namalengkap\",
  \"destination_address_line_1\": \"$alamat\",
  \"destination_address_line_2\": null,
  \"destination_phone_number\": \"$phone\",
  \"destination_email_address\": \"$email\",
  \"taxes_duties_paid_by\": \"Sender\",
  \"is_insured\": false,
  \"items\": [
      \"description\": \"Supresso Coffee\",
      \"sku\": \"test\",
      \"actual_weight\": 1,
      \"height\": 10,
      \"width\": 10,
      \"length\": 10,
      \"category\": \"Dry Food & Supplements\",
      \"declared_currency\": \"SGD\",
      \"declared_customs_value\": 10
  ]
}");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Authorization: Bearer prod_bbzjPNveJC+gSLXI24f+oVEMMmyzO+LW2OWokIBqPhw="
));

$response = curl_exec($ch);
curl_close($ch);

*/

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "https://api.easyship.com/shipment/v1/shipments");
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($ch, CURLOPT_HEADER, FALSE);

curl_setopt($ch, CURLOPT_POST, TRUE);

curl_setopt($ch, CURLOPT_POSTFIELDS, "{
  \"platform_name\": \"Amazon\",
  \"platform_order_number\": \"#1234\",
  \"selected_courier_id\": \"16691987-a149-441b-a777-727ffe5c3325\",
  \"destination_country_alpha2\": \"US\",
  \"destination_city\": \"New York\",
  \"destination_postal_code\": \"10022\",
  \"destination_state\": \"NY\",
  \"destination_name\": \"Aloha Chen\",
  \"destination_address_line_1\": \"300 Park Avenue\",
  \"destination_address_line_2\": null,
  \"destination_phone_number\": \"+1 234-567-890\",
  \"destination_email_address\": \"api-support@easyship.com\",
  \"items\": [$item]}");

curl_setopt($ch, CURLOPT_HTTPHEADER, array(
  "Content-Type: application/json",
  "Authorization: Bearer prod_bbzjPNveJC+gSLXI24f+oVEMMmyzO+LW2OWokIBqPhw="
));

$response = curl_exec($ch);
curl_close($ch);


echo $idorder;
echo '<br>';
echo $negara;
echo '<br>';
echo $city;
echo '<br>';
echo $ngr;
echo '<br>';
echo $kta;
echo '<br>';
echo $postcode;
echo '<br>';
echo $namalengkap ;
echo '<br>';
echo $alamat ;
echo '<br>';
echo $phone ;
echo '<br>';
echo $email;
echo '<br>';
echo $item;
echo '<br>';
var_dump($response);
?>