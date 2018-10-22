require 'reportage'

# Generate PDF
rep = Reportage.new
rep.add [0, 1, 2]
rep.to_pdf 'examples/output/simple.pdf'

#Generate XLS
rep = Reportage.new
rep << [0, 1, 2]
rep.to_xls 'examples/output/out.xls'

# Generate complicated PDF
rep = Reportage.new
rep.add 'Hello world' * 100
rep.add [1, 2, 3] * 3
rep.add({a: 1, b: 2})
rep.to_pdf 'examples/output/complicated.pdf'