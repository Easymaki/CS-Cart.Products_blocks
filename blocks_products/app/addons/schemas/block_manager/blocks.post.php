<?php

$schema['products']['content']['items']['fillings']['in_stock'] = array(
    'params' => array(
        'in_stock' => true
    )
);

$schema['products']['content']['items']['fillings']['out_of_stock_products'] = array(
    'params' => array(
        'out_of_stock' => true
    )
);


return $schema;
