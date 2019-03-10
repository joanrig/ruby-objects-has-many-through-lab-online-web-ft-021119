require 'pry'

class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end

  def self.all
    @@all
  end


  def new_appointment(patient,date)
    appointment = Appointment.new(date, patient, self)
    @appointments<< appointment
    #@patients << patient
    appointment
  end

  def patients
    self.appointments.map {|appointment| appointment.patient}
    #binding.pry
  end

end
