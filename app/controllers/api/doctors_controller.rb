class Api::DoctorsController < ApplicationController
def show
doctors = Doctor.all #selects all doctors
doctorsArr = doctors.map(&:clone) #creates a clone of doctors array, so that info may be deleted from clone without deleting it from database
appointments = Appointment.all #selects all appointments
appointments.each do |appointment| #checks if there is an appointment where doctor_id matches a doctor's id and if so that doctor is deleted from doctorsArr
doctorsArr.each do |doctor|
if doctor.id == appointment.doctor_id
    doctorsArr.delete(doctor)
end
end
end
if doctorsArr.length != 0 #if doctors arr is not 0 it is returned showing the doctors who have no appointments
render json: {data: doctors}
else 
render json: {message: 'all our doctors are fully booked'} #returns a message showing all doctors have appointments
end
end
end