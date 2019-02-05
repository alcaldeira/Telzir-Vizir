# Telzir-Vizir

Ruby, Capybara, SitePrism, usando o conceito de Pages Object. Não temos nenhum Sleep fixo no projeto, tudo é feito de forma dinâmica, alguns parâmetros são passado via o comando do cucumber no cmd ou shell e os outros estão na tabela na feature, como boa prática procurei deixar o projeto relativamente simples (até porque foi meu primeiro site que crio automação).
Apesar de termos poucos cenários automatizados e o site ser relativamente simples, tive uma grande dificuldade de encontrar os elementos na tela pois alguns campos estavam :hover e IDs iguais para mais de 1 campo então dava muita ambiguidade.

## Instalação das Gems é necessário instalar primeiro o bundler

    To install bundler type:

        gem install bundler

## Gems instaladas

Gems necessário para rodar os testes: source 'https://rubygems.org'

gem 'selenium-webdriver',       '3.4.0'
gem 'cucumber',                 '2.4.0'
gem 'rspec',                    '3.6.0'
gem 'capybara',                 '2.14.1'
gem 'pry',                      '0.10.4'
gem 'poltergeist',              '1.15.0'
gem 'site_prism'
gem 'faker'
gem 'cpf_faker'
gem 'ffaker'

## TAGS Para executar os planos unitariamente:
@simula30
@simula60
@simula120

## Exemplo:
cucumber --tag @simula30

## Para executar todo o projeto executar
Cucumber

