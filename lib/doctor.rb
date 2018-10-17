require_relative '../lib/patient.rb'
require_relative '../lib/appointment.rb'
require 'pry'

class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select do |doctors|
            doctors.doctor == self
        end
    end

    def patients
        self.appointments.collect do |patients|
            patients.patient
        end
    end

end