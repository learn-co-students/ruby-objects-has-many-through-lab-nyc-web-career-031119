class Patient

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self  }
  end

  def doctors
    self.appointments.map { |appointment| appointment.doctor  }
  end

  def self.all
    @@all
  end
end
