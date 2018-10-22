require 'reportage/version'
require 'reportage/generators/pdf_generator'
require 'reportage/generators/xls_generator'
require 'prawn'
require 'axlsx'

class Reportage

  include PDFGenerator
  include XLSGenerator

  attr_accessor :report_data, :pdf
  # attr_accessor :dx

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
