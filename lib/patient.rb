class Patient

    @@all = []

    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select do |app|
            app.patient == self
        end
    end

    def doctors
       self.appointments.collect do |app|
            app.doctor
        end
    end


    def self.all
        @@all
    end






end