require 'selenium-webdriver'

class TestWebsitesController < ApplicationController

  def new
    render :new
  end

  def create
    url = params[:url]
    puts url

    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to url

    element = driver.find_element(:name, 'q')
    element.send_keys "Hello WebDriver!"
    element.submit

    puts driver.title

    driver.quit
    render :new
  end

end
