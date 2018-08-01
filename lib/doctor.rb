class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(self, date, patient)
  end

  def appointments
    Appointment.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    self.appointment.collect do |patient|
      appointment.patient 
    end
  end
end
      