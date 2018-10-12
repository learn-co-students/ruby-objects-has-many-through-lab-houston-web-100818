class Patient
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(doctor, self, date)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end 

    def doctors
        doctor_array = []

        appointments.each do | appointment |
            doctor_array << appointment.doctor
        end
        doctor_array
    end
end 