class Doctor

    @@all = []

attr_accessor :name

def initialize(name)
    self.name = name
    @@all << self
end

def new_appointment(patient, date)
    Appointment.new(patient, self, date)
end
#WHY DID DATE, PATIENT NOT WORK??? I WASTED SOOOOOOO MUCH TIME

def self.all
    @@all
end

def appointments
    Appointment.all.select do |app|
        app.doctor == self
    end
end

def patients
    self.appointments.collect do |app|
        app.patient
    end
end




end