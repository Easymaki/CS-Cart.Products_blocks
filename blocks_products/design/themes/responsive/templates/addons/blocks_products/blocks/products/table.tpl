{if $items}
    <div class="grid-list">
        {foreach from=$items item="product"}
        {include file="common/product_data.tpl" obj_id=$product.product_id product=$product}
            <div class="ty-column5">
                {if $product}
                {assign var="form_open" value="form_open_`$product.product_id`"}
                {$smarty.capture.$form_open nofilter}
                <div class="ty-grid-list__item ty-quick-view-button__wrapper ty-grid-list__item--overlay">
                    <div class="ty-grid-list__image">
                        {include file="views/products/components/product_icon.tpl" product=$product show_gallery=true}
                    </div>
                    <div class="ty-grid-list__item-name">
                        <span>{$product.product}</span>
                    </div>
                    <div class="grid-list__item-name">
                        <span>{$product.product_code}</span>
                    </div>
                    <div class="ty-grid-list__amount">
                        <span>{__("promotion_op_amount")}: {$product.amount}</span>
                    </div>
                    <div class="ty-grid-list__control">
                        <div class="button-container">
                            {$show_add_to_cart = 1}
                            {$but_role = 'submit'}
                            {$add_to_cart = "add_to_cart_`$product.product_id`"}
                            {$smarty.capture.$add_to_cart nofilter}
                        </div>
                    </div>
                </div>
                {assign var="form_close" value="form_open_`$product.product_id`"}
                {$smarty.capture.$form_close nofilter}
                {/if}
            </div>
        {/foreach}
    </div>
{/if}
