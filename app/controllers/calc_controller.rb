class CalcController < ApplicationController
  def home

    render({ :template => "calc_templates/home"})
  end

  def square

    render({ :template => "calc_templates/square_new"})
  end

  def square_results
    @user_number = params.fetch("number").to_f

    render({ :template => "calc_templates/square_results"})
  end
end
