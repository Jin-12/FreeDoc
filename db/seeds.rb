# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'
# Doctor.destroy_all
# Patient.destroy_all
# Appointement.destroy_all
# City.destroy_all
# JoinTableDoctorsSpecialty.destroy_all
# Specialty.destroy_all

15.times do
  city = City.create(name: Faker::HarryPotter.location)
end

10.times do
  doc = Doctor.create(first_name: Faker::Pokemon.name, last_name: Faker::Superhero.suffix, zip_code: Faker::Code.npi, city_id: rand(1..5))
end

20.times do
  pat = Patient.create(first_name: Faker::Pokemon.name, last_name: Faker::Superhero.suffix, city_id: rand(1..15))
end

25.times do
  app = Appointement.create(date: Time.new(2019,rand(1..12),rand(1..31)).to_date, doctor_id: rand(1..10),patient_id: rand(1..20), city_id: rand(1..15))
  end

5.times do
    spec = Specialty.create(title: Faker::Military.navy_rank)
  end

25.times do
  jtds = JoinTableDoctorsSpecialty.new(doctor_id: rand(1..10), specialty_id: rand(1..5))
  jtds.doctor = Doctor.all.sample
  jtds.specialty = Specialty.all.sample
  jtds.save
end
