class Doctor

    attr_accessor :name

    @@all = Array.new

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def doc_insts
        Appointment.all.select do |a|
            a.doctor == self
        end
    end

    def appointments
        doc_insts.map do |e|
            e
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        doc_insts.map do |e|
            e.patient
        end
    end

end