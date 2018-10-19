# require 'reportage/version'
require 'reportage/generators/pdf_generator'
require 'reportage/generators/xml_generator'
require 'prawn'

class Reportage

  include PDFGenerator

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
