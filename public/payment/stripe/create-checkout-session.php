<?php

require_once 'shared.php';

$domain_url = $config['domain'];
$totalamount = $body->totalamount;

// Create new Checkout Session for the order
// Other optional params include:
// [billing_address_collection] - to display billing address details on the page
// [customer] - if you have an existing Stripe Customer ID
// [customer_email] - lets you prefill the email input in the form
// For full details see https://stripe.com/docs/api/checkout/sessions/create

// ?session_id={CHECKOUT_SESSION_ID} means the redirect will have the session ID set as a query param
$checkout_session = \Stripe\Checkout\Session::create([
	'success_url' => $domain_url . '/success',
	'cancel_url' => $domain_url . '/canceled',
	'payment_method_types' => ['card'],
	'mode' => 'payment',
	//'allow_promotion_codes' => true,
	'line_items' => [['price_data' => ['currency' => 'sgd','product_data' => ['name' => 'Supresso Coffee',],'unit_amount' => $totalamount,],'quantity' => 1,]], 
  ]);

//var_dump($checkout_session);
echo json_encode(['sessionId' => $checkout_session['id']]);
