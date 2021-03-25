# frozen_string_literal: true
Dir[File.join(File.dirname(__FILE__), "../support/entity/sections/*.rb")].sort.each { |file| require file }

class Payment < SitePrism::Page
  element :btn_check_payment, 'a[class="cheque"]'
  element :btn_confirm_order, "button", text: "I confirm my order"
  element :field_type_payment, 'h3[class="page-subheading"]'

  def selecionar_pagamento_cheque
    btn_check_payment.click
  end

  def confirmar_pedido
    btn_confirm_order.click
  end

  def retorna_tipo_pagamento
    field_type_payment.text
  end
end
