class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        self.name = name
        @@all << self
    end

    def new_appointment (doctor, date_info)
        Appointment.new(date_info, self, doctor)
    end

    def appointments
        Appointment.all.filter do |aptmnt|
            aptmnt.patient == self
        end
    end

    def doctors
        self.appointments.map do |aptmnt|
            aptmnt.doctor
        end
    end

    def self.all
        @@all
    end

end