class Doctor
    @@all = [] 
    attr_accessor :name

    def initialize(name)
        self.name = name

        @@all << self
    end

    def appointments
        Appointment.all.filter do |aptmnt|
            aptmnt.doctor == self
        end
    end

    def new_appointment(patient, date_info)
        Appointment.new(date_info, patient, self)
    end

    def patients
        self.appointments.map do |aptmnt|
            aptmnt.patient
        end
    end

    def self.all
        @@all
    end
end