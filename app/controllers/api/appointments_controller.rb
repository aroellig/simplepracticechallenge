class Api::AppointmentsController < ApplicationController
  def index
    
    appointments = Appointment.all # selects appointents array
    doctors = Doctor.all #selects doctors array
    patients = Patient.all # selects patients array
    appointmentList = []; #emplty array to hold appointments to be displayed

    if params["past"].to_i == 1 #checks for a query param that is equal to "1"
      appointments.each do |appointment| #iterates over appointments array so that each individual appointment can be selected
        if (appointment.start_time.past?) #checks if the appointment's start time is in the past and if so the next step of code is performed
            appointmentObj = { #creates appointment object to hold the proper info as specified in the requirements for this challenge
        id: '',
        patient:  '' ,
        doctor:  { name: '', id: '' },
        created_at: '',
        start_time: '',
        duration_in_minutes: ''
      }
      #lines 23-26 set the appointObj info to that of the selected appointment
        appointmentObj["id"] = appointment.id 
        appointmentObj["created_at"] = appointment.created_at
        appointmentObj["start_time"] = appointment.start_time
        appointmentObj["duration_in_minutes"] = appointment.duration_in_minutes
          doctors.each do |doctor| #iterates over doctors array
            if doctor.id == appointment.doctor_id #checks if the current doctor's id is the same as the appointment's doctor id and if so then the next line of code is performed
              appointmentObj["doctor"] = { name: doctor.name, id: doctor.id } # sets the appointmentOBj doctor info to that of the specified doctor
            end
          end
  
          patients.each do |patient| #iterated over patients array
            if patient.id == appointment.patient_id#checks if the current patient's id is the same as the appointment's doctor id and if so then the next line of code is performed
              appointmentObj["patient"] = {name: patient.name}# sets the appointmentOBj patient info to that of the specified patient
            end
          end
        appointmentList.push(appointmentObj) # adds the appointment obj to the appointmentList
        end 
  
      end
    elsif params["past"] == "0" #checks for a query param equal to 0
      appointments.each do |appointment| #iterates over each appointment
        if (!appointment.start_time.past?) #checks if each appointments start time was not the past and if so the following code is performed
          #lines 45-70 are the same as lines 14-39 as the code is the same and functions the same way, please refer above for a description of what each line does
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
    elsif params["page"] != nil #checks for pagination to see in a page query param exist and if so the following code is performed
      if params["page"].to_i * params["length"].to_i < appointments.length #checks to make sure that database can be paginated under entered parameters
      last = (params["page"].to_i * params["length"].to_i) - 1 #sets the last index of appointments user wants
      first = (last - params["length"].to_i) + 1 #sets the first index of appointments user wants to see
      appointments[first..last].each do |appointment| #selects appointments from the first index to the last index
        #lines 76 - 100 are the same as lines 14-39 as the code is the same and functions the same way, please refer above for a description of what each line does
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

      else
        # assumes no query params so user wants a list of all 100 appoinments
        #the following code functions the same as lines 14-39 please refer above to see what each line does
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
         if appointmentList.length > 0 #checks if there was pagination and if so was it successful
          render json: {data: appointmentList}
          elsif  params["page"].to_i * params["length"].to_i > appointments.length
            render json: {message: 'page could not be paginated'}
          end
      end
 
  def create
  params = {
    "patient_id": 12,
    "doctor_id": 2,
    "duration_in_minutes": 50,
    "start_time": "2022-07-18T00:00:00.000Z"
}

  @appointment = Appointment.new(params) #creates a new appointment from the entered appointment params
      patients = Patient.all #creates array of all patients
      appointmentObj = { #creates response object as specified in requirements and sets that objects keys to equal the correct values
      patient: {name: patients[@appointment.patient_id].name}, 
      doctor: {id: @appointment.doctor_id}, 
      start_time: @appointment.start_time,
      duration_in_minutes: 50
      }
    if @appointment.save #checks if request was successful and if new appointment was saved to database

      render json: {data: appointmentObj} #returns response object
    else
      render json: appointment.errors.full_messages, status: 422 #returns error message
    end
  end


  private

  def appointment_params #defines what params may be entered to create a new appointment
    params.permit(:patient_id, :doctor_id, :start_time, :duration_in_minutes)
  end
end
