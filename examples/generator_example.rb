# Generate PDF
rep = ReportageDsl::Generator.new
rep.add [0, 1, 2]
rep.to_pdf

#Generate XML
rep = ReportageDsl::Generator.new
rep << [0, 1, 2]
rep.to_xml