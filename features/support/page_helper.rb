Dir[File.join(File.dirname(__FILE__),
              '../pages/*.rb')].each { |file| require file }

# modulos para chamar as classes instanciadas em web
module Pages

  def webVr
    WebVr.new
  end

end
