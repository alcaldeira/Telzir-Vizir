#language: pt

Funcionalidade: Realizar Simulação de Planos por Minuto
        Eu como vitante do sistema
        Desejo realizar uma simulação de plano

Contexto: Acessar a página da Telzir
    Dado que eu acesse o site da Telzir

@simula30
Esquema do Cenário: Simulação de 30 Minutos
    Dado que clique no botão Como Funciona
    Quando eu selecionar uma opção FaleMais Trinta
        E preencho <Origem>, <Destino> e <Valor>, <preco>
    Então eu tenho o resultado do plano Trinta Minutos <resultado>

    Exemplos:
        | Origem | Destino | Valor | preco | resultado |
        | 011    | 016     | 31    | 1.9   | "58,90"   |
        | 011    | 017     | 31    | 1.70  | "52,70"   |
        | 011    | 018     | 31    | 1.90  | "27,90"   |
        | 016    | 011     | 31    | 2.90  | "89,90"   |
        | 018    | 011     | 31    | 2.70  | "83,70"   |
        | 018    | 011     | 31    | 1.90  | "58,90"   |

@simula60
Esquema do Cenário: Simulação de 60 Minutos
    Dado que clique no botão Como Funciona
    Quando Quando eu selecionar uma opção FaleMais Sessenta
        E preencho <Origem>, <Destino> e <Valor>, <preco>
    Então eu tenho o resultado do plano Sessenta Minutos <resultado>

    Exemplos:
        | Origem | Destino | Valor | preco | resultado |
        | 011    | 016     | 61    | 1.9   | "115,90"  |
        | 011    | 017     | 61    | 1.70  | "103,70"  |
        | 011    | 018     | 61    | 1.90  | "54,90"   |
        | 016    | 011     | 61    | 2.90  | "176,90"  |
        | 017    | 011     | 61    | 2.70  | "164,70"  |
        | 018    | 011     | 61    | 1.90  | "115,90"  |

@simula120
Esquema do Cenário: Simulação de 120 Minutos
    Dado que clique no botão Como Funciona
    Quando eu selecionar uma opção FaleMais Cento e Vinte
         E preencho <Origem>, <Destino> e <Valor>, <preco>
    Então eu tenho o resultado do plano Cento e Vinte Minutos <resultado>

    Exemplos:
        | Origem | Destino | Valor | preco | resultado |
        | 011    | 016     | 121   | 1.9   | "229,90"  |
        | 011    | 017     | 121   | 1.70  | "205,70"  |
        | 011    | 018     | 121   | 1.90  | "108,90"  |
        | 016    | 011     | 121   | 2.90  | "350,90"  |
        | 017    | 011     | 121   | 2.70  | "326,70"  |
        | 018    | 011     | 121   | 1.90  | "229,90"  |

# @simula60
# Cenário: Simulação de 60 Minutos
#     Dado que clique no botão Como Funciona
#     Quando eu selecionar uma opção FaleMais Sessenta
#     Então eu tenho o resultado do plano de Sessenta Minutos

# @simula120
# Cenário: Simulação de 120 Minutos
#     Dado que clique no botão Como Funciona
#     Quando eu selecionar uma opção FaleMais Cento e Vinte
#     Então eu tenho o resultado do plano Cento e Vinte Minutos