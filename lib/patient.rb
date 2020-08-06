class Patient
    attr_accessor :name, :appointments;
    @@all = [];

    def initialize(name)
        @name = name;

        @@all.push(self);
    end

    def self.all
        @@all;
    end

    def new_appointment(doc, date)
        apt = Appointment.new(date, self, doc)
    end

    def appointments
        Appointment.all.filter{|apt| apt.patient == self}
    end

    def doctors
        self.appointments.map{|apt| apt.doctor}
    end

end