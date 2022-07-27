class Api::AppointmentsController < ApplicationController
  def index
    # TODO: return all values
    appointments = Appointment.all
    render json: {data: appointments}
    # TODO: return filtered values
    # head :ok
  
  end

  def create
    # TODO:
  end
end
