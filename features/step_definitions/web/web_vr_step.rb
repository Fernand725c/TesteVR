Dado('que acesse o site VR') do
  visit 'https://www.vr.com.br/'
end

Dado('acessa até a seção {string}') do |dado|
  webVr.secao(dado)
end

Dado('clique no botão {string}') do |dado|
  webVr.botao(dado)
end

Então('valide que o mapa do google abra em tela') do
  webVr.valida_mapa
end
