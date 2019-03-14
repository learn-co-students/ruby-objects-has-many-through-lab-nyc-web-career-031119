class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def doctors
    self.appointments.map do |appointment|
      # binding.pry
      appointment.date
    end
  end

end
