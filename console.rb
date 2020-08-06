require "pry"
require_relative "./lib/artist.rb"
require_relative "./lib/genre.rb"
require_relative "./lib/song.rb"
require_relative "./lib/doctor.rb"
require_relative "./lib/appointment.rb"
require_relative "./lib/patient.rb"


###### SONG/ARTIST/GENRE TEST CASES ######

jayz = Artist.new("Jay-Z")
journey = Artist.new("Journey")
rap = Genre.new("Rap")
country = Genre.new("Country")
otis = Song.new("Otis", jayz, country)
hardknock_life = Song.new("Hardknock Life", jayz, rap)
dont_stop_believing = Song.new("Don't Stop Believing", journey, country)

###### PATIENT/DOCTOR/APOINTMENT ######
doctor_who = Doctor.new('The Doctor')

      hevydevy = Patient.new('Devin Townsend')
      doctor_who.new_appointment(hevydevy, 'Friday, January 32nd')


binding.pry