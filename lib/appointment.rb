class Appointment
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :doctor, :patient, :date

    def initialize(doctor, patient, date)
        self.doctor = doctor
        self.patient = patient
        self.date = date
        @@all << self
    end
end