# encode: UTF-8

# classe de metodos em comum para reutilizar em todos steps de services
class Common

  def response_code(code)
    raise ArgumentError, "Código esperado #{code}, código obtido #{$response.code}" if code != $response.response.code
  end

end
