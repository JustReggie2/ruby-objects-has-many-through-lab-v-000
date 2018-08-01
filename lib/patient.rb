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
  
  def new_appointment(date, patient)
    Appointment.new(doctor, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointment.collect do |doctor|
      appointment.doctor
    end
  end
end
