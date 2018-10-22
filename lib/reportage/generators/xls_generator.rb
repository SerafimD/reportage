module XLSGenerator
  def to_xls(filename)
    package = Axlsx::Package.new
    workbook = package.workbook
    name = 'data'
    workbook.add_worksheet(name: name) do |sheet|
      sheet.add_row report_data, :style => Axlsx::STYLE_THIN_BORDER
    end
    package.serialize(filename)
    filename
  end
end
