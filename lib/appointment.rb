class Appointment
    @@all  = []
    attr_accessor :doctor, :patient, :date

    def initialize(doctor, patient, date)
        @doctor = doctor
        @@all << self
        @date = date
        @patient = patient
    end

    def self.all
        @@all    
    end
end