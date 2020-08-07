class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor,date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.filter do |appointment|
           appointment.patient == self
        end
    end

    def doctors 
        appointments.map do |my_apps|
            my_apps.doctor
        end
    end

    def self.all
        @@all
    end

end