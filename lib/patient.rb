class Patient

  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |apt|
      apt.patient == self
    end
  end

  def self.all
    @@all
  end

  def doctors
    self.appointments.map do |apt|
      apt.doctor
    end
  end

end
