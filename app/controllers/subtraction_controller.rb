class SubtractionController < ApplicationController
  def show_sub_form
    render({ :template => "subtraction_templates/subtraction_form" })
  end

  def subtract
    @first_num = params.fetch("first_number").to_f
    @second_num = params.fetch("second_number").to_f

    @result = @first_num - @second_num
  
    render({ :template => "subtraction_templates/sub_results" })
  end
end
