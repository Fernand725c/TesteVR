# encode: UTF-8

# classe de metodos de web
class WebVr < SitePrism::Page

  element :mapa, :xpath, '//*[@id="map"]/div/div/div[2]'

  def secao(dado)
    click_link(dado, :match => :first)
  end

  def botao(dado)
    click_on(dado)
  end

  def valida_mapa
    mapa.visible?
  end

end
