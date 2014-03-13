module Sendmail
  class << self
    attr_accessor :bin, :args
    
    def bin
      @bin ||= `which sendmail`.chomp!
    end
    
    def args
      @args ||= "-i"
    end
  end
  
  def sendmail!(to, mail)
    io = IO.popen([Sendmail.bin, Sendmail.args, to], "w+b")
    io.write(mail)
    io.close
    $?.to_i == 0
  end
  
  module_function :sendmail!
end