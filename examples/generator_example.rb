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