# frozen_string_literal: true

class ModalAddedCart < SitePrism::Section
  element :btn_proceed_to_checkout, 'a[title="Proceed to checkout"]'
  element :btn_contonue_shopping, 'span[title="Continue shopping"]'
  element :field_product_name, "#layer_cart_product_title"
  element :field_product_price, 'span[class*="products_total"]'
  element :field_product_shipping, 'span[class*="shipping_cost"]'
  element :field_cart_total, 'span[class*="cart_total"]'
end
