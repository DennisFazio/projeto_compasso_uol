# frozen_string_literal: true

class ProdutosRetornados < SitePrism::Section
  element :btn_add_cart, "a", text: "Add to cart"
  element :btn_more, 'a[class*="lnk_view"]'
end
