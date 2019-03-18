class Doctor
  attr_accessor :name, :patient, :date
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
     @@all
  end

  def new_appointment(date, patient)
    appointment =  Appointment.new(date, patient, self)
    appointment.doctor = self
    appointment
  end

  def appointments
    Appointment.all.select{|a| a.doctor == self }
  end

  def patients
    appointments.map{|a| a.patient }
  end

end
