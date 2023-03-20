class ConversionsController < ApplicationController
  def convert
    # Weight conversion instance variables

    if params[:input_value].present?
      begin
        @input_unit = params[:input_unit]
        @output_unit = params[:output_unit]
        @value = Float(params[:input_value])

        case @input_unit
        when 'kg' then @result = Kilogram.convert(@output_unit, @value)
        when 'lbs' then @result = Pound.convert(@output_unit, @value)
        when 'tn' then @result = Ton.convert(@output_unit, @value)
        end
      rescue ArgumentError
        @weight_error_message = "Invalid input value: '#{params[:input_value]}' is not a valid number"
      end
    else
      @weight_error_message = 'Input value is required'
    end

    if params[:input_lenght].present?
      begin
        # Lenght conversion instance variables
        @input_unit_lenght = params[:input_unit_lenght]
        @output_unit_lenght = params[:output_unit_lenght]
        @input_lenght = Float(params[:input_lenght])

        case @input_unit_lenght
        when 'meters' then @result_lenght = Meter.convert(@output_unit_lenght, @input_lenght)
        when 'centimeters' then @result_lenght = Centimeter.convert(@output_unit_lenght, @input_lenght)
        when 'milimeters' then @result_lenght = Milimeter.convert(@output_unit_lenght, @input_lenght)
        end
      rescue ArgumentError
        @length_error_message = "Invalid input length: '#{params[:input_lenght]}' is not a valid number"
      end
    else
      @length_error_message = 'Input length is required'
    end
  end
end
