Dir[File.join(File.dirname(__FILE__),
              "../services/*.rb")].sort.each { |file| require file }

# modulos para chamar as classes instanciadas por Services
module Rest

  def apiVr
    ApiVr.new
  end

  def common
    Common.new
  end

end
