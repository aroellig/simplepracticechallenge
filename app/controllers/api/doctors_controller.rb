class Api::DoctorsController < ApplicationController
def show
doctors = Doctor.all
appointments = Appointment.all
appointments.each do |appointment|
doctors.each do |doctor|
if doctor.id == appointment.doctor_id
    doctors.delete(doctor)
end
end
end
render json: {data: doctors}
end
end