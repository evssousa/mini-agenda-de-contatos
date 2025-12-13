require_relative "lib/msg_inicial"
require_relative "lib/limpar_tela"
require_relative "lib/adicionar"
require_relative "lib/listar"
require_relative "lib/procurar"

opcao = ""

while opcao != "4"
  limpar_tela()
  msg_inicial()
  puts "\nPara verificar sua agenda, selecione uma das opções:"
  puts "
  1. Adicionar
  2. Listar
  3. Procurar
  4. Finalizar Programa
  \n"
  
  print "Opção: "
  opcao = gets.chomp
  
  case opcao
  when "1"
    adicionar()
  when "2"
    listar()
  when "3"
    procurar()
  when "4"
    puts "Programa finalizado."
  else
    puts "Comando inválido. Tente novamente."
    sleep(1)
  end
end