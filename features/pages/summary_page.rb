# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Summary < SitePrism::Page
  element :field_total_prod, "#total_product"
  element :field_total_shipping, "#total_shipping"
  element :field_total_price_without_tax, "#total_price_without_tax"
  element :field_name_prod, 'p[class="product-name"]'

  element :btn_proceed_to_checkout, 'a[title="Proceed to checkout"]'

  def retorna_valores_unico_produto_summary
    PrintScreen.new.tira_print("produto_summary", "passou")
    produto = {}
    produto[:nome] = field_name_prod.text
    produto[:total_prod] = field_total_prod.text
    produto[:total_shipping] = field_total_shipping.text
    produto[:total_cart] = field_total_price_without_tax.text
    produto
  end

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end
end
