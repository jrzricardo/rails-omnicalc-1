class CalculatorController < ApplicationController
  def home

    render({ :template => "calculator_templates/home"})
  end

  def square

    render({ :template => "calculator_templates/square_new"})
  end

end
