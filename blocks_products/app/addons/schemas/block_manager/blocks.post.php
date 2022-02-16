<?php

use Tygh\Enum\ProductFeatures;
use Tygh\Enum\ProfileFieldSections;
use Tygh\Enum\ProfileFieldTypes;
use Tygh\Enum\YesNo;
use Tygh\Registry;

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
