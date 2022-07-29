class Api::DoctorsController < ApplicationController
def show
doctors = Doctor.all
doctorsArr = doctors.map(&:clone)
appointments = Appointment.all
appointments.each do |appointment|
doctorsArr.each do |doctor|
if doctor.id == appointment.doctor_id
    doctorsArr.delete(doctor)
end
end
end
if doctorsArr.length != 0
render json: {data: doctors}
else 
render json: {message: 'all our doctors are fully booked'}
end
end
end