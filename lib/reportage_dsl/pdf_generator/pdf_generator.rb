module ReportageDsl
  class Generator
    module PdfGenerator

      def to_pdf
        pdf = Prawn::Document.new
        # Настройка ttf шрифтов для работы с кириллицей
        pdf.font_families.update(
            "Arial" => {
                :bold => 'lib/reportage_dsl/fonts/ArialBold.ttf',
                :italic => 'lib/reportage_dsl/fonts/ArialItalic.ttf',
                :normal  => 'lib/reportage_dsl/fonts/ArialRegular.ttf' })
        pdf.font "Arial", :size => 10
        pdf.text "#{report_data}", :size => 20, :style => :bold#, :align => :center
        creation_date = Time.now.strftime("Отчет сгенерирован %e %b %Y в %H:%M")
        pdf.text creation_date, :align => :right, :style => :italic, :size => 9
        pdf.render_file(filename)
      end

    end
  end
end
