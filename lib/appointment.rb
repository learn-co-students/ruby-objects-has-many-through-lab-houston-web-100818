require 'pry'
class Appointment

    @@all = []

    attr_accessor :patient, :doctor, :date
    

    def initialize(patient, doctor, date)
    self.date = date
    self.patient = patient
    self.doctor = doctor
    @@all << self
    end


    def self.all
        @@all
    end







end

