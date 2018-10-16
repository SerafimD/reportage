require 'json'
require 'reportage_dsl'

class DataGenerator
  include ReportageDSL::PDFGenerator

  attr_reader :a_data, :h_data, :j_data

  def initialize(data)
    @a_data = [data] << 1
    @h_data = Hash[*@a_data]
    @j_data = @h_data.to_json
  end

  def generate
    generate_pdf(a_data)
    generate_pdf(h_data)
    generate_pdf(j_data)
  end

end

DataGenerator.new('Hello World').generate
