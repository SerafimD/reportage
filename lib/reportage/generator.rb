require 'reportage/pdf_generator/pdf_generator'

module Reportage

  class Generator

    include Reportage::Generator::PdfGenerator

    attr_accessor :report_data, :filename

    def initialize
      @report_data = []
      @filename = ''
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