class Doctor
    attr_accessor :name;
    @@all = [];

    def initialize(name)
        @name = name;
        @@all << self;
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.filter{|apt| apt.doctor == self}
    end

    def new_appointment(date, patient)
        newApt = Appointment.new(patient, date, self);
    end

    def patients
        self.appointments.map{|apt| apt.patient}
    end
end