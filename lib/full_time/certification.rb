module FullTime
  class Certification
    attr_accessor :certificates

    def initialize
      @certificates = List.new
    end

    def certificates(&block)
      if block_given?
        @certificates.instance_eval(&block)
      end

      @certificates
    end

    def certificate(&block)
      if block_given?
        certificate = Certificate.new
        certificate.instance_eval(&block)
        @certificates << certificate
        certificate
      end
    end
  end
end
