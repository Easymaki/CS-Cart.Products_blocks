{if $items}
<div class="ty-compact-list">
    {foreach from=$items item="product"}
    {include file="common/product_data.tpl" obj_id=$product.product_id product=$product}
        <div class="ty-compact-list__item">
            {assign var="form_open" value="form_open_`$product.product_id`"}
            {$smarty.capture.$form_open nofilter}
            <div class="ty-compact-list__image">
                {include file="views/products/components/product_icon.tpl" product=$product show_gallery=false}
            </div>
            <div class="ty-compact-list__title">
                {$show_name = true}
                {$name = "name_`$product.product_id`"}
                {$smarty.capture.$name nofilter}

                {$show_sku = true}
                {$sku = "sku_`$product.product_id`"}
                {$smarty.capture.$sku nofilter}
            </div>
            <div class="ty-compact-list__controls">
                {$show_product_amount = true}
                {$amount = "product_amount_`$product.product_id`"}
                {$smarty.capture.$product_amount nofilter}

                {assign var="qty" value="qty_`$product.product_id`"}
                {$smarty.capture.$qty nofilter}
            </div>
            <div class="cm-reload-{$product.product_id}">
                <div class="button-container">
                    {$show_add_to_cart = true}
                    {$but_role = 'submit'}
                    {$add_to_cart = "add_to_cart_`$product.product_id`"}

                    {$smarty.capture.$add_to_cart nofilter}
                </div>
            </div>
            {assign var="form_close" value="form_open_`$product.product_id`"}
            {$smarty.capture.$form_close nofilter}
        </div>
    {/foreach}
</div>
{/if}
