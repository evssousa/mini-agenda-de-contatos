require_relative "msg_inicial"
require_relative "limpar_tela"
require_relative "agenda"

def procurar
  limpar_tela()
  msg_inicial()

  print "\nDigite o nome do usuário: "
  nome = gets.chomp

  Agenda.procurar(nome)

  puts "\nPressione ENTER para continuar..."
  gets
end