class DivisionController < ApplicationController

  def show_division_form
    render({ :template => "div_templates/division_for" })
  end

  def divide_these
    @first_number = params.fetch("first_number").to_f
    @second_number = params.fetch("second_num").to_f

    @result = @first_number / @second_number

    render({ :template => "div_templates/divide_results" })
  end

end
