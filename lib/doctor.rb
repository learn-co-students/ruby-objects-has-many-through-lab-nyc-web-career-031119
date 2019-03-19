class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all  << self
    end

    def self.all
        @@all    
    end
    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor == self
        end
    end

    def patients
        appointments.map do |my_app|
            my_app.patient
        end
    end
end