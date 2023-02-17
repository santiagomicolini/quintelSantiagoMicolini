
class ConversionsController < ApplicationController
  def convert
    @input_unit = params[:input_unit]
    @output_unit = params[:output_unit]
    @input_value = params[:input_value]

    @input_lenght = params[:input_lenght]
    @output_unit_lenght = params[:output_unit_lenght]
    @input_unit_lenght = params[:input_unit_lenght]


    if params[:input_unit] == 'kg'
      if params[:output_unit] == 'lbs'
        @result = Kilogram.convert_to_lbs(params[:input_value].to_f)
      elsif params[:output_unit] == 'tn'
        @result = Kilogram.convert_to_tn(params[:input_value].to_f)
      end
    end

    if params[:input_unit] == 'lbs'
      if params[:output_unit] == 'kg'
        @result = Pound.convert_to_kg(params[:input_value].to_f)
      elsif params[:output_unit] == 'tn'
        @result = Pound.convert_to_tn(params[:input_value].to_f)
      end
    end

    if params[:input_unit] == 'tn'
      if params[:output_unit] == 'kg'
        @result = Ton.convert_to_kg(params[:input_value].to_f)
      elsif params[:output_unit] == 'lbs'
        @result = Ton.convert_to_lbs(params[:input_value].to_f)
      end
    end

    if params[:input_unit_lenght] == 'meters'
      if params[:output_unit_lenght] == 'centimeters'
        @result_lenght = Meter.convert_to_cm(params[:input_lenght].to_f)
      elsif params[:output_unit_lenght] == 'milimeters'
        @result_lenght = Meter.convert_to_mm(params[:input_lenght].to_f)
      end
    end

    if params[:input_unit_lenght] == 'centimeters'
      if params[:output_unit_lenght] == 'meters'
        @result_lenght = Centimeter.convert_to_m(params[:input_lenght].to_f)
      elsif params[:output_unit_lenght] == 'milimeters'
        @result_lenght = Centimeter.convert_to_milim(params[:input_lenght].to_f)
      end
    end

    if params[:input_unit_lenght] == 'milimeters'
      if params[:output_unit_lenght] == 'centimeters'
        @result_lenght = Milimeter.convert_to_cm(params[:input_lenght].to_f)
      elsif params[:output_unit_lenght] == 'meters'
        @result_lenght = Milimeter.convert_to_m(params[:input_lenght].to_f)
      end
    end
  end
end
