class Api::AppointmentsController < ApplicationController
  def index
    # TODO: return all values
    appointments = Appointment.all
    doctors = Doctor.all
    patients = Patient.all
    appointmentList = [];

    appointments.each do |appointment|
          appointmentObj = {
      id: '',
      patient:  '' ,
      doctor:  { name: '', id: '' },
      created_at: '',
      start_time: '',
      duration_in_minutes: ''
    }
      appointmentObj["id"] = appointment.id
      appointmentObj["created_at"] = appointment.created_at
      appointmentObj["start_time"] = appointment.start_time
      appointmentObj["duration_in_minutes"] = appointment.duration_in_minutes
        doctors.each do |doctor|
          if doctor.id == appointment.doctor_id
            appointmentObj["doctor"] = { name: doctor.name, id: doctor.id }
          end
        end

        patients.each do |patient|
          if patient.id == appointment.patient_id
            appointmentObj["patient"] = {name: patient.name}
          end
        end
      appointmentList.push(appointmentObj)
    end
    render json: {data: appointmentList}
    # TODO: return filtered values
    # head :ok
  appointments = Appointment.where("created_at > Time.now")
  appointments = Appointment.where("created_at < Time.now")
  end

  def create
    # TODO:
  end
end
