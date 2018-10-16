require 'reportage_dsl'

# V1
#
# Generate PDF from string
ReportageDSL::PDFGenerator.generate('Hello World', file: './file.pdf')
# Generate PDF from data array
ReportageDSL::PDFGenerator.generate(['Hello World', 'Goodbye World'], file: './file.pdf')
# Generate XLSX from string
ReportageDSL::XLSXGenerator.generate('Hello World', file: './file.xlsx')

# V2
#
# Generate PDF from string
ReportageDSL::Generator.generate('Hello World', format: :pdf)
# Generate PDF from array with named header
ReportageDSL::Generator.generate(['Hello World', 'Goodbye World'], header: ['col1', 'col2'], format: :pdf)
# Generate XLSX from string
ReportageDSL::Generator.generate('Hello World', header: ['col1', 'col2'], format: :xlsx)

# V3
#
# Generate PDF
rep = ReportageDSL::Generator.new
rep.add [0, 1, 2]
rep.to_pdf

#Generate XML
rep = ReportageDSL::Generator.new
rep << [0, 1, 2]
rep.to_xml