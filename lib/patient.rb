class Patient

    attr_reader :name

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def pat_insts
        Appointment.all.select do |e|
            e.patient == self
        end
    end

    def appointments
        pat_insts.map do |e|
            e
        end
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def doctors
        pat_insts.map do |e|
            e.doctor
        end
    end

end