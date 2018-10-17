require 'reportage_dsl/pdf_generator/pdf_generator'

module ReportageDsl

  class Generator

    include ReportageDsl::Generator::PdfGenerator

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