require_relative "lib/msg_inicial"
require_relative "lib/agenda"
require_relative "lib/limpar_tela"

# comando = ARGV[0]
# args = ARGV[1..]

msg_inicial()
puts "\nPara verificar sua agenda, selecione uma das opções:"
puts "
1. Adicionar
2. Listar
3. Procurar
\n"

print "Opção: "
opcao = gets.chomp.to_i

case opcao
when 1
  limpar_tela()
  msg_inicial()
  puts "\nAdicione o novo usuário:"

  print "Nome: "
  nome = gets.chomp

  print "Telefone: "
  telefone = gets.chomp

  print "Email: "
  email = gets.chomp

  puts "\nConfirme os dados:
  Nome: #{nome}
  Telefone: #{telefone}
  E-mail: #{email}"
  print "\nAs informações estão corretas [s/n]? "
  confirmacao = gets.chomp

  if confirmacao == "s"
    limpar_tela()
    msg_inicial()
    Agenda.add(nome, telefone, email)
  end
end

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