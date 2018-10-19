require 'reportage'

# Generate PDF
rep = Reportage.new
rep.add [0, 1, 2]
rep.filename = 'examples/output/out.pdf'
rep.to_pdf

#Generate XLS
rep = Reportage.new
rep << [0, 1, 2]
rep.filename = 'examples/output/out.xls'
rep.to_xls
