# TODO: Seed the database according to the following requirements:
# - There should be 10 Doctors with unique names
# - Each doctor should have 10 patients with unique names
# - Each patient should have 10 appointments (5 in the past, 5 in the future)
#   - Each appointment should be 50 minutes in duration

require 'faker'

#creates a loop which runs ten times, on each iteration a new doctor is created with a randomly generated name, which is added to the Doctor array
10.times do |index| 
    Doctor.create!(
                  name: Faker::Name.name)            
  end

 
# iterates over Doctor array, on each instance of Doctor a loop is generated which runs 10 times
# on each iteration a new Patient is created with a random name, and a doctor_id set to the id of the current instance of doctor
  Doctor.all.each do |doctor|
    10.times do |index|
        Patient.create!(
                      name: Faker::Name.name,
                      doctor_id: doctor.id)            
      end
  end

  #iterates over patients array, on each instance of patient a loop is generated which runs 5 times
  # on each iteration of loop an Appointment is generated with a patient_id set to current instance of patient id and a doctor_id set to current instance of patient doctor_id
  # duration_in_minutes is set to 50 and start_time is randomly generated time between current date and 14 days in past
  Patient.all.each do |patient|
    5.times do |index|
        Appointment.create!(
                    patient_id: patient.id,
                  doctor_id: patient.doctor_id,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))
    end
  end

    #iterates over patients array, on each instance of patient a loop is generated which runs 5 times
  # on each iteration of loop an Appointment is generated with a patient_id set to current instance of patient id and a doctor_id set to current instance of patient doctor_id
  # duration_in_minutes is set to 50 and start_time is randomly generated time between current date and 14 days in future
  Patient.all.each do |patient|
    5.times do |index|
        Appointment.create!(
                patient_id: patient.id,
                  doctor_id: patient.doctor_id,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 14))
    end
  end


