def saludar(saludo)
  saludo.call
end

saludo_espa = Proc.new do
  puts "Hola como estoy Leo"
end

saludo_ingles = Proc.new do
  puts "Hola in english"
end

saludar(saludo_espa)

saludar(saludo_ingles)
