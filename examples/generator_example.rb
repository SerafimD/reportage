require 'reportage_dsl'

# V1
#
# Generate PDF from string
ReportageDSL::PDFGenerator.generate('Hello World')
# Generate PDF from data array
ReportageDSL::PDFGenerator.generate(['Hello World', 'Goodbye World'])
# Generate XLSX from string
ReportageDSL::XLSXGenerator.generate('Hello World')

# V2
#
# Generate PDF from string
ReportageDSL::Generator.generate('Hello World', format: :pdf)
# Generate PDF from array with named header
ReportageDSL::Generator.generate(['Hello World', 'Goodbye World'], header: ['col1', 'col2'], format: :pdf)
# Generate XLSX from string
ReportageDSL::Generator.generate('Hello World', header: ['col1', 'col2'], format: :xlsx)
