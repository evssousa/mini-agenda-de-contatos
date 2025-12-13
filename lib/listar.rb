require_relative "msg_inicial"
require_relative "limpar_tela"
require_relative "agenda"

def listar
  limpar_tela()
  msg_inicial()
  
  Agenda.listar
  puts "\nPressione ENTER para continuar..."
  gets
end