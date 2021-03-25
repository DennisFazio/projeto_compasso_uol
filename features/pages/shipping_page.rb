# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Shipping < SitePrism::Page
  element :checkbox_agree_terms, "#uniform-cgv"
  element :btn_proceed_to_checkout, "button", text: "Proceed to checkout"

  def aceitar_termos
    checkbox_agree_terms.click
  end

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end
end
