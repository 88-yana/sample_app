class ApplicationController < ActionController::Base
  def hello
    render html: "hello, sample!"
  end
end
