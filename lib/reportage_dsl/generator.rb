module ReportageDsl

  class Generator

    attr_accessor :report_data

    def initialize
      @report_data = []
    end

    #
    # Add some data for report
    #
    def add(data)
      report_data << data
    end

    #
    # Add some data for report
    #
    def <<(data)
      report_data << data
    end

  end

end