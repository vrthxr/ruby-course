class SimpleController < ApplicationController
  def hello
      render json:{
        message: "Hello, this is a simple exemple without a view."
      }
  end
end
