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

  def new_appointment(doctor, date)
      appointment =  Appointment.new(self,date,doctor)
      appointment.patient = self
      appointment
  end

  def appointments
    Appointment.all.select{|a| a.patient == self }
  end

  def doctors
    appointments.collect{|a| a.doctor }
  end

end
