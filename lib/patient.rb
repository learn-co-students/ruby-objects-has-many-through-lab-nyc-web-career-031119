class Patient
  attr_accessor :name, :date, :doctor
  @@all = []
  def initialize(name)
  @name = name
  @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
      appointment =  Appointment.new(date, self, doctor)
      appointment.patient = self
      appointment
  end

  def appointments
    Appointment.all.select{|a| a.patient == self }
  end

  def doctors
    appointments.collect{|a| a.patient }
  end

end
