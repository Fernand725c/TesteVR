require 'report_builder'
require 'date'

#gerador de evidência, vai gerar o passo a passo da automação
if($env_ambiente == 'web')
  def add_screenshot(steps)
    sufix = ('error' if steps.failed?) || 'success'
    name = steps.name.tr(' ', '_').downcase
    foto = save_screenshot("images/#{sufix}-#{name}.png")
    base64_img = Base64.encode64(File.open(foto, 'rb:UTF-8', &:read))
    attach(base64_img, 'image/png;base64')
  end

  After do |steps|
    add_screenshot(steps)
  end
end

at_exit do
  ReportBuilder.configure do |config|
    config.json_path = 'relatorios/report.json'
    config.report_path = 'relatorios/cucumber_relatorio'
    config.report_types = [:html]
    config.report_title = "Relatório da Execução #{Time.now.strftime('%d/%m/%Y %H:%M')}"
    config.compress_images = false
    config.color = 'blue'
  end
  ReportBuilder.build_report
  if($env_ambiente == 'web')
    FileUtils.rm_rf('images/')
  end
end
