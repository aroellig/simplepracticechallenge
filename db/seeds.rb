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

  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 1)            
  end

  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 2)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 3)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 4)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 5)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 6)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 7)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 8)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 9)            
  end
  10.times do |index|
    Patient.create!(
                  name: Faker::Name.name,
                  doctor_id: 10)            
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 1,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 1,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 2,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 2,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 3,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 3,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 4,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 4,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 5,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 5,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 6,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 6,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 7,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 7,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 8,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 8,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 9,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 9,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 10,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 10,
                  doctor_id: 1,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 11,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 11,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 12,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 12,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 13,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 13,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 14,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 14,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 15,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 15,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 16,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 16,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 17,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 17,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 18,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 18,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 19,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 19,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 20,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 20,
                  doctor_id: 2,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 21,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 21,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 22,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 22,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 23,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 23,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 24,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 24,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 25,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 25,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 26,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 26,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 27,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 27,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 28,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 28,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 29,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 29,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 30,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 30,
                  doctor_id: 3,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 31,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 31,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 32,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 32,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 33,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 33,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 34,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 34,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 35,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 35,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 36,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 36,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 37,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 37,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 38,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 38,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 39,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 39,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 40,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 40,
                  doctor_id: 4,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 41,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 41,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 42,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 42,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 43,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 43,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 44,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 44,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 45,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 45,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 46,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 46,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 47,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 47,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 48,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 48,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 49,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 49,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 50,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 50,
                  doctor_id: 5,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 51,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 51,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 52,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 52,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 53,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 53,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 54,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 54,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 55,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 55,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 56,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 56,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 57,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 57,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 58,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 58,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 59,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 59,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 60,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 60,
                  doctor_id: 6,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 61,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 61,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 62,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 62,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 63,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 63,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 64,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 64,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 65,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 65,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 66,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 66,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 67,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 67,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 68,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 68,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 69,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 69,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 70,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 70,
                  doctor_id: 7,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 71,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 71,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 72,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 72,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 73,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 73,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 74,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 74,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 75,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 75,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 76,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 76,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 77,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 77,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 78,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 78,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 79,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 79,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 80,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 80,
                  doctor_id: 8,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 81,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 81,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 82,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 82,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 83,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 83,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 84,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 84,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 85,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 85,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 86,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 86,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 87,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 87,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 88,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 88,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 89,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 89,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 90,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 90,
                  doctor_id: 9,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 91,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 91,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 92,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 92,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 93,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 93,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 94,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 94,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 95,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 95,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 96,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 96,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 97,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 97,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 98,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 98,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 99,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 99,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end
  5.times do |index|
    Appointment.create!(
                  patient_id: 100,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.forward(days: 23))          
  end

  5.times do |index|
    Appointment.create!(
                  patient_id: 100,
                  doctor_id: 10,
                  duration_in_minutes: 50,
                  start_time: Faker::Date.backward(days: 14))           
  end