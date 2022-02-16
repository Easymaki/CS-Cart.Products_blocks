<?php

if (!defined('BOOTSTRAP')) {
    die('Access denied');
}

function fn_blocks_products_get_products(&$params, $fields, $sortings, &$condition, $join, $sorting, $group_by, $lang_code, $having)
{
    if (!empty($params['out_of_stock'])) {
        $condition .= db_quote(' AND products.amount = ?i', '0');
    }
    if (!empty($params['in_stock'])) {
        $condition .= db_quote(' AND products.amount > ?i', '0');
    }
}
