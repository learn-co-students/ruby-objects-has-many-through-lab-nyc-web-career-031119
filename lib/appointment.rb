class Appointment

  @@all = []

  attr_accessor :doctor

  attr_reader :name, :patient

  def initialize(name, doctor, patient)
    @name = name
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
