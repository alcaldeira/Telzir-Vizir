class HomePage < SitePrism::Page
    element :simulacao,          "a[href='#simulacao']"
    element :comofunciona,       "a[href='#sobre']" 
    element :falemais30,         "a[data-plano='plano-30']"
    element :falemais60,         "a[data-plano='plano-60']"
    element :falemais120,        "a[data-plano='plano-120']"
    element :nome,               "#name"
    element :email,              "#email"
    element :enviar,             "input[value='ENVIAR']"

 def falemais_30
     self.falemais30.click
     self.nome.set              FFaker::NameBR.name  
     self.email.set             Faker::Internet.email
     self.enviar.click
end

  def falemais_60
     self.falemais60.click
     self.nome.set              FFaker::NameBR.name  
     self.email.set             Faker::Internet.email
     self.enviar.click
end

def falemais_120
     self.falemais120.click
     self.nome.set              FFaker::NameBR.name  
     self.email.set             Faker::Internet.email
     self.enviar.click
  end
end