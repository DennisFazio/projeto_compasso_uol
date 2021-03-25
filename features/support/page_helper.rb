# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].sort.each { |file| require file }

module PageObjects
  def home
    @home ||= Home.new
  end

  def search_result
    @search_result ||= Search_Result.new
  end

  def product_details
    @product_details ||= Product_Details.new
  end

  def summary
    @summary ||= Summary.new
  end

  def authentication
    @authentication ||= Authentication.new
  end

  def main_menu
    @main_menu ||= MainMenu.new
  end

  def shipping
    @shipping ||= Shipping.new
  end

  def payment
    @payment ||= Payment.new
  end
end
