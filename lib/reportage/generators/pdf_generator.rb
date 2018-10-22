module PDFGenerator
  def to_pdf(filename)
    @dx = 0
    @pdf = Prawn::Document.new
    # Настройка ttf шрифтов для работы с кириллицей
    pdf.font_families.update(
        "Arial" => {
            :bold => 'lib/reportage/fonts/ArialBold.ttf',
            :italic => 'lib/reportage/fonts/ArialItalic.ttf',
            :normal  => 'lib/reportage/fonts/ArialRegular.ttf' })
    pdf.font "Arial", :size => 10
    # pdf.text "#{report_data}", :size => 20, :style => :bold#, :align => :center
    report_data.each do |elem|
      print_elem(elem)
    end
    creation_date = Time.now.strftime("Отчет сгенерирован %e %b %Y в %H:%M")
    pdf.text creation_date, :align => :right, :style => :italic, :size => 9
    pdf.render_file(filename)
  end

  def print_elem(e)
    puts "print_elem(e) = #{e}"
    print_string(e) if e.is_a? String
    print_numeric(e) if e.is_a? Numeric
    pring_array(e) if e.is_a? Array
    print_hash(e) if e.is_a? Hash
  end

  def print_string(e)
    puts "print_string e = #{e}"
    pdf.text(
      e.to_s,
      size: 20,
      style: :bold,
      align: :left
    )
  end

  def print_numeric e
    puts "print_numeric e = #{e}"
    pdf.text e.to_s, :size => 20, :style => :bold, :align => :left
  end

  def pring_array(e)
    puts "pring_array(e) = #{e}"
    e.each do |elem|
      print_elem(elem)
    end
  end

  def print_hash(e)
    puts "print_hash(e) = #{e}"
    e.keys.each do |key|
      print_string "#{key}: "
      print_elem e[key]
    end
  end

end
