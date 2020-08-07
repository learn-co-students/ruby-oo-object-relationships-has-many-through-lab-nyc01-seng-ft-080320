class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient,date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.filter do |appointment|
           appointment.doctor == self
        end
    end

    def patients
        appointments.map do |doc_apps|
            doc_apps.patient
        end
    end

    def self.all
        @@all
    end
end