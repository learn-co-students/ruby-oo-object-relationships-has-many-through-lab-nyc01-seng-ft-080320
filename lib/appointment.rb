class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = Array.new

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all.push(self)
    end

    def self.all
        @@all
    end

    

end