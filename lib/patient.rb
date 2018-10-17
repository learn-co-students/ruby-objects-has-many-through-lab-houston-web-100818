require_relative '../lib/doctor.rb'
require_relative '../lib/appointment.rb'
require 'pry'

class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select do |patients|
            patients.patient ==  self
        end
    end

    def doctors
        #iterates over that patient's appointments and 
        #collects the doctor that belongs to each appointment.
        self.appointments.collect do |doctors|
            doctors.doctor
        end
    end

end