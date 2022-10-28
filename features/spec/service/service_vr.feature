# language: pt

@api
Funcionalidade: Consulta VR API

    @consulta_vr_api
    Esquema do Cenario: Realizar Consulta API VR
    Dado que realize uma consulta na api vr
    Então retorna o código <responseCode> com sucesso
    Exemplos:
    | responseCode |
    | "200"        |
