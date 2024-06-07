class CalculatorController < ApplicationController
  def home

    @message = "howdy :>"
    render({ :template => "calculator_templates/home"})
  end
end
