# Generate PDF
rep = Reportage.new
rep.add [0, 1, 2]
rep.filename = 'out.pdf'
rep.to_pdf

#Generate XML
rep = Reportage.new
rep << [0, 1, 2]
rep.filename = 'out.pdf'
rep.to_xml