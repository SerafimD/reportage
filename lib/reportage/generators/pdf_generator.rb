# require 'pry-byebug'

module PDFGenerator
  def to_pdf(filename)
    @pdf = Prawn::Document.new
    @indentation = 0
    # Настройка ttf шрифтов для работы с кириллицей
    pdf.font_families.update(
        "Arial" => {
            :bold => 'lib/reportage/fonts/ArialBold.ttf',
            :italic => 'lib/reportage/fonts/ArialItalic.ttf',
            :normal  => 'lib/reportage/fonts/ArialRegular.ttf' })
    pdf.font "Arial", :size => 10
    report_data.each do |elem|
      print_elem(elem)
    end
    creation_date = Time.now.strftime("Отчет сгенерирован %e %b %Y в %H:%M")
    pdf.text creation_date, :align => :right, :style => :italic, :size => 9
    pdf.render_file(filename)
  end

  def print_elem(e)
    print_string(e) if e.is_a? String
    print_numeric(e) if e.is_a? Numeric
    print_boolean(e) if boolean? e
    pring_array(e) if e.is_a? Array
    print_hash(e) if e.is_a? Hash
  end

  def boolean?(elem)
    elem.is_a?(TrueClass) || elem.is_a?(FalseClass)
  end

  def print_string(elem)
    pdf.indent(indentation) do
      pdf.text(elem.to_s, size: 20, style: :bold, align: :left)
    end
  end

  def print_boolean(elem)
    pdf.indent(indentation) do
      pdf.text(elem.to_s, size: 20, style: :bold, align: :left)
    end
  end

  def print_numeric(elem)
    pdf.indent(indentation) do
      pdf.text elem.to_s, :size => 20, :style => :bold, :align => :left
    end
  end

  def pring_array(elem)
    elem.each do |e|
      print_elem(e)
    end
  end

  def print_hash(elem)
    elem.keys.each do |key|
      print_string "#{key}: "
      self.indentation += 3
      pdf.indent(indentation) do
        print_elem elem[key]
      end
      self.indentation -= 3
    end
  end

end
