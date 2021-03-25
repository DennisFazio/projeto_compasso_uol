# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Authentication < SitePrism::Page
  element :field_email, "#email"
  element :field_password, "#passwd"
  element :btn_password, "#SubmitLogin"
  element :btn_proceed_to_checkout, "button", text: "Proceed to checkout"

  section :div_address_delivery, AddressDelivery, "#address_delivery"

  def realizar_login(email, senha)
    field_email.set email
    field_password.set senha
    btn_password.click
  end

  def proceed_to_checkout
    btn_proceed_to_checkout.click
  end
end
