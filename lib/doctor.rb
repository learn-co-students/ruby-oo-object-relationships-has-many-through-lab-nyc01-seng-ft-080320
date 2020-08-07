class Doctor
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    # def new_appointment(patient, date)
    #     Appointment.new (self, patient, date)
    # end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments 
        Appointment.all
    end

    def patients
        self.appointments.map do |a|
            a.patient  
        end
    end

end

