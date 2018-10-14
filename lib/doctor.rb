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
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do | appointment |
            appointment.doctor == self #something like this
        end
    end

    def patients
        self.appointments.map do | appointment |
            appointment.patient #whatever patient is called in appt
        end
    end

end