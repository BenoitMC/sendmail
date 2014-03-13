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
  
  def sendmail!(mail, opts = {})
    bin     = opts[:bin]  || Sendmail.bin
    args    = opts[:args] || Sendmail.args
    command = [bin, args]
    command << opts[:to] if opts.key?(:to)
    
    io = IO.popen(command, "w+b")
    io.write(mail)
    io.close
    $?.to_i == 0
  end
  
  module_function :sendmail!
end