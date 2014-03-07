module Sendmail
  class << self
    attr_accessor :bin
    
    def bin
      @bin ||= `which sendmail`.chomp!
    end
  end
  
  def sendmail!(to, mail)
    io = IO.popen([Sendmail.bin, to], "w+b")
    io.write(mail)
    io.close
    $?.to_i == 0
  end
  
  module_function :sendmail!
end