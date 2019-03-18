class Appointment
  @@all = []
  attr_accessor :date, :patient, :doctor

  def initialize(patient, date, doctor)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end
