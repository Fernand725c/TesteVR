# language: pt

@web
Funcionalidade: Site VR

    @validar_mapa
    Cenario: Validar Abertura de Mapa Site VR
    Dado que acesse o site VR
    E acessa até a seção "Pra Você"
    E clique no botão "Onde usar meu cartão VR?"
    Então valide que o mapa do google abra em tela
