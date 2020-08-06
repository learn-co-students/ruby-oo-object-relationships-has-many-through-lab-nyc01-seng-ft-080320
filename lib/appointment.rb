class Appointment
    attr_accessor :doctor, :patient, :date;
    @@all = [];
    #appointment_3 = Appointment.new('Sunday, January 34th', mike, doctor_who)
    def initialize (date, patientObj, doctorObj)
        @date = date;
        @patient = patientObj;
        @doctor = doctorObj;
        @@all << self;
    end
        

    def self.all
        @@all
    end

end