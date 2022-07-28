# TODO: Seed the database according to the following requirements:
# - There should be 10 Doctors with unique names
# - Each doctor should have 10 patients with unique names
# - Each patient should have 10 appointments (5 in the past, 5 in the future)
#   - Each appointment should be 50 minutes in duration

require 'faker'


10.times do |index|
    Doctor.create!(
                  name: Faker::Name.name)            
  end

  Doctor.create!(name: 'Bob')

  Doctor.all.each do |doctor|
    10.times do |index|
        Patient.create!(
                      name: Faker::Name.name,
                      doctor_id: doctor.id)            
      end
  end

  Patient.all.each do |patient|
    10.times do |index|
        Appointment.create!(
                    patient_id: patient.id,
                  doctor_id: patient.doctor_id,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))
    end
  end

