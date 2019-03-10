class Patient
  attr_accessor :name, :doctors, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #@doctor.patients << self
    @doctors = []
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor,date)
    appointment = Appointment.new(date,self, doctor)
    @doctors << doctor
    appointment
    binding.pry
  end

    def doctors
      self.appointments.map {|appointment| appointment.doctor}
      #binding.pry
    end

end
