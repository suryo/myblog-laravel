<?php
require_once('vendor/autoload.php');
// Set your secret key. Remember to switch to your live secret key in production!
// See your keys here: https://dashboard.stripe.com/account/apikeys
\Stripe\Stripe::setApiKey('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');

// Token is created using Stripe Checkout or Elements!
// Get the payment token ID submitted by the form:
// ?? URL ? source ??
$source_id = filter_input(INPUT_GET, 'source', FILTER_SANITIZE_URL);
$source_object = \Stripe\Source::retrieve($source_id);


$status = $source_object->redirect->status;
if($status == "failed")
{
   	
}
else {
 
    \Stripe\Charge::create([
        'amount' => 4988,
        'currency' => 'sgd',
        'source' => $source_id,
    ]);
   
    $user_email = $source_object->owner->email;
    
}





?>