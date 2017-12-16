class SalesController < ApplicationController
  def import
    if params[:file]
      @total_imported_value = SalesImporter.importer(params[:file])    

      render 'result'
    else
      @error_message = "Please, inform a valid file!"

      render 'error'
    end
  end
end
