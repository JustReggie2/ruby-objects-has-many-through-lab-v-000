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

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |date|
      date.patient == self
    end
  end

  def doctors
    self.appointment.collect do |doctor|
      appointment.doctor
    end
  end
end
