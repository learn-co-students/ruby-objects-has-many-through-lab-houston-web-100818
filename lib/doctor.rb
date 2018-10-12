class Doctor
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        patient_array = []

        appointments.each do |appointment|
            patient_array << appointment.patient
        end
        patient_array
    end
end     