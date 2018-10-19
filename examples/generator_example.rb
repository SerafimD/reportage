require 'reportage'

# Generate PDF
rep = Reportage.new
rep.add [0, 1, 2]
rep.filename = 'examples/output/simple.pdf'
rep.to_pdf

#Generate XLS
rep = Reportage.new
rep << [0, 1, 2]
rep.filename = 'examples/output/out.xls'
rep.to_xls

# Generate complicated PDF
rep = Reportage.new
rep.add 'Hello world' * 100
rep.add [1, 2, 3] * 3
rep.add({a: 1, b: 2})
rep.filename = 'examples/output/complicated.pdf'
rep.to_pdf