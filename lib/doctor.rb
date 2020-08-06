class Doctor

    attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.all.select {|app| app.doctor == self }
    end

    def patients
        self.appointments.map {|app| app.patient}
    end

    def new_appointment(patient,date)
        Appointment.new(date, patient, self)
    end

end
