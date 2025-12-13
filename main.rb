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
  else
    puts "Comando inválido."
  end
end

# comando = ARGV[0]
# args = ARGV[1..]

# case comando
# when "add"
#   if args.size == 3
#     Agenda.add(args[0], args[1], args[2])
#   else
#     puts "Modo de usar: ruby main.rb add \"Nome\" \"Telefone\" \"Email\""
#   end

# when "list"
#   Agenda.list

# when "search"
#   if args.size == 1
#     Agenda.search(args[0])
#   else
#     puts "Modo de usar: ruby main.rb search \"Nome\""
#   end
  
# else
#   puts "Comando inválido. Use: add, list ou search."
# end