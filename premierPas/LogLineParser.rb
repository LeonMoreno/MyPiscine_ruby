class LogLineParser
    def initialize(line)
      @line = line
      init_parser(@line)
    end
  
    def init_parser(line)
        sp_line = line.split(":")
        @log_lev = sp_line[0].downcase 
        @log_lev = @log_lev.slice(1, (@log_lev.length - 2))
        @msg = sp_line[1].strip
    end
  
    def message
      @msg
    end
  
    def log_level
      @log_lev
    end
  
    def reformat
      "#{@msg} (#{@log_lev})"
    end
end
  
  puts LogLineParser.new('[ERROR]: Invalid operation').reformat