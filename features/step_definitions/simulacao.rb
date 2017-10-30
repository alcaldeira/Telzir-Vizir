# encoding: utf-8

# Contexto
Dado('que eu acesse o site da Telzir') do
  @url = AcessPage.new
  @url.load
end

Dado("que clique no bot\xC3\xA3o Como Funciona") do
  @home = HomePage.new
  first("a[href='#sobre']").click
end

Quando("eu selecionar uma op\xC3\xA7\xC3\xA3o FaleMais Trinta") do
  @home.falemais_30
  sleep 0o2
end

Quando('preencho {int}, {int} e {int}, {float}') do |_ori, _dest, _valor, _preco|
  select_dropdown = lambda do |text, option|
    within('.input-field.input-field-normal', text: text) do
      find('input').click
      find('span', text: option).click
    end
  end
  select_dropdown.call('DDD da origem', _ori)
  select_dropdown.call('DDD do destino', _dest)
  @simula = SimulacaoPage.new
  @simula.duracao.set _valor
  @simula.simular.click

  # Calculo
  @semplano = _valor * _preco
end

Quando('preencho {int}, {int} e {int}') do |_ori, _dest, _valor, _preco|
  select_dropdown = lambda do |text, option|
    within('.input-field.input-field-normal', text: text) do
      find('input').click
      find('span', text: option).click
    end
  end
  select_dropdown.call('DDD da origem', _ori)
  select_dropdown.call('DDD do destino', _dest)
  @simula = SimulacaoPage.new
  @simula.duracao.set _valor
  @simula.simular.click

  #Calculo
  @semplano = _valor * _preco
  puts @semplano
end

Então('eu tenho o resultado do plano Trinta Minutos {string}') do |_result|
  expect(page).to have_content 'Resultado'
  expect(page).to have_content _result
end

# FaleMais 60
Quando("Quando eu selecionar uma op\xC3\xA7\xC3\xA3o FaleMais Sessenta") do
  @home.falemais_60
  sleep 0o2
end

Então('eu tenho o resultado do plano Sessenta Minutos {string}') do |_result|
  expect(page).to have_content 'Resultado'
  expect(page).to have_content _result
end

# FaleMais120
Quando("eu selecionar uma op\xC3\xA7\xC3\xA3o FaleMais Cento e Vinte") do
  @home.falemais_120
  sleep 0o2
end

Então('eu tenho o resultado do plano Cento e Vinte Minutos {string}') do |_result|
  expect(page).to have_content 'Resultado'
  expect(page).to have_content _result
end
