# lib/iic2143_reporter/reporter.rb
require "erb"


module IIC2143Reporter
  class Reporter
    TEMPLATE = File.join(File.dirname(__FILE__), "template.html.erb")

    def initialize(total_score, max_score, failed_tests, feedback)
      @total_score = total_score
      @max_score = max_score
      @failed_tests = failed_tests
      @feedback = feedback
      @timestamp = Time.now.strftime("%Y-%m-%d %H:%M:%S")
      @feedback_class = feedback_class # Añade esta línea
    end

    def generate(output_path = "test_report.html")
      template = File.read(TEMPLATE)
      html = ERB.new(template).result(binding)
      File.write(output_path, html)
      puts "✅ Reporte generado en: #{output_path}"
    end

    def feedback_class
      case @total_score
      when 5.5..6.0 then "success"
      when 4.0..5.4 then "warning"
      else "danger"
      end
    end
  end
end