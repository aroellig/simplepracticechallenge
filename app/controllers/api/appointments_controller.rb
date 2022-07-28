class Api::AppointmentsController < ApplicationController
  def index

   
    appointments = Appointment.all
    doctors = Doctor.all
    patients = Patient.all
    appointmentList = [];
    if params["past"] == "1"
      appointments.each do |appointment| 
        if (appointment.start_time.past?)
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
      end
    elsif params["past"] == "0"
      appointments.each do |appointment| 
        if (!appointment.start_time.past?)
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
      end
    elsif params["page"] != nil
      last = (params["page"].to_i * params["length"].to_i) - 1
      first = (last - params["length"].to_i) + 1
      appointments[first..last].each do |appointment| 
        
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
   

  else

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
end

     render json: {data: appointmentList}

  end

  def create
    # TODO:
    appointment = Appointment.new(appointment_params)
    if appointment.save
      render json: {message: 'success'}
    else
      render json: appointment.errors.full_messages, status: 422
    end
  end

  private

  def appointment_params 
    params.permit(:patient, :doctor, :start_time, :duration_in_minutes)
  end
end
