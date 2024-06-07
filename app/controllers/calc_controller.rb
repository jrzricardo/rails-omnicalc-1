class CalcController < ApplicationController
  def home

    render({ :template => "calc_templates/home"})
  end

  def square

    render({ :template => "calc_templates/square"})
  end

  def square_results
    @user_number = params.fetch("number").to_f

    render({ :template => "calc_templates/square_results"})
  end

  def square_root
  
    render({ :template => "calc_templates/square_root"})
  end

  def square_root_results
    @user_number = params.fetch("number").to_f
    render({ :template => "calc_templates/square_root_results"})
  end

  def payment
    render({ :template => "calc_templates/payment"})
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @pv = params.fetch("user_pv").to_i
    
    percentage_rate = @apr / 100 
    r = percentage_rate / 12
  
    n = @years * 12
  
    payment = (r * @pv) / (1 - (1 + r) ** (n * -1)) 
    @p = payment.to_fs(:currency)
    render({ :template => "calc_templates/payment_results"})
  end

  def random
    render({ :template => "calc_templates/random"})
  end

  def random_results
    @min_number = params.fetch("user_min").to_f
    @max_number = params.fetch("user_max").to_f
    @rand_number = rand(@min_number..@max_number)
    render({ :template => "calc_templates/random_results"})
  end
end
