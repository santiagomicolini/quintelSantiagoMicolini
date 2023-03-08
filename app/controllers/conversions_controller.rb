class ConversionsController < ApplicationController
  def convert
    # Weight conversion instance variables
    if params[:input_value].present?
      begin
        @input_unit = params[:input_unit]
        @output_unit = params[:output_unit]
        @input_value = Float(params[:input_value])

        if params[:input_unit] == 'kg'
          if params[:output_unit] == 'lbs'
            @result = Kilogram.convert_to_lbs(@input_value)
          elsif params[:output_unit] == 'tn'
            @result = Kilogram.convert_to_tn(@input_value)
          end
        end

        if params[:input_unit] == 'lbs'
          if params[:output_unit] == 'kg'
            @result = Pound.convert_to_kg(@input_value)
          elsif params[:output_unit] == 'tn'
            @result = Pound.convert_to_tn(@input_value)
          end
        end

        if params[:input_unit] == 'tn'
          if params[:output_unit] == 'kg'
            @result = Ton.convert_to_kg(@input_value)
          elsif params[:output_unit] == 'lbs'
            @result = Ton.convert_to_lbs(@input_value)
          end
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
        @input_lenght = params[:input_lenght]
        @output_unit_lenght = params[:output_unit_lenght]
        @input_lenght = Float(params[:input_lenght])

        if params[:input_unit_lenght] == 'meters'
          if params[:output_unit_lenght] == 'centimeters'
            @result_lenght = Meter.convert_to_cm(@input_lenght)
          elsif params[:output_unit_lenght] == 'milimeters'
            @result_lenght = Meter.convert_to_mm(@input_lenght)
          end
        end

        if params[:input_unit_lenght] == 'centimeters'
          if params[:output_unit_lenght] == 'meters'
            @result_lenght = Centimeter.convert_to_m(@input_lenght)
          elsif params[:output_unit_lenght] == 'milimeters'
            @result_lenght = Centimeter.convert_to_milim(@input_lenght)
          end
        end

        if params[:input_unit_lenght] == 'milimeters'
          if params[:output_unit_lenght] == 'centimeters'
            @result_lenght = Milimeter.convert_to_cm(@input_lenght)
          elsif params[:output_unit_lenght] == 'meters'
            @result_lenght = Milimeter.convert_to_m(@input_lenght)
          end
        end
      rescue ArgumentError
        @length_error_message = "Invalid input length: '#{params[:input_lenght]}' is not a valid number"
      end
    else
      @length_error_message = 'Input length is required'
    end
  end
end
