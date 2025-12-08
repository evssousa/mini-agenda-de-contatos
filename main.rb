require_relative "lib/agenda"

comando = ARGV[0]
args = ARGV[1..]

case comando
when "add"
  if args.size == 3
    Agenda.add(args[0], args[1], args[2])
  else
    puts "Modo de usar: ruby main.rb add \"Nome\" \"Telefone\" \"Email\""
  end
when "list"
  Agenda.list
when "search"
  if args.size == 1
    Agenda.search(args[0])
  else
    puts "Modo de usar: ruby main.rb search \"Nome\""
  end
else
  puts "Comando inválido. Use: add, list ou search."
end