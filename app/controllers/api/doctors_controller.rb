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
if doctors.length != 0
render json: {data: doctors}
else 
render json: {message: 'all our doctors are fully booked'}
end
end
end