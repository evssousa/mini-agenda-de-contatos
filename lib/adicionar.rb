require_relative "msg_inicial"
require_relative "limpar_tela"
require_relative "agenda"

def adicionar
  limpar_tela()
  msg_inicial()
  
  confirmacao = "n"
  
  while confirmacao != "s"
    limpar_tela()
    msg_inicial()
    puts "\nAdicione o novo usuário:"
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp
    print "Email: "
    email = gets.chomp
  
    limpar_tela()
    msg_inicial()
    puts "\nConfirme os dados:
    Nome: #{nome}
    Telefone: #{telefone}
    E-mail: #{email}"
  
    print "\nAs informações estão corretas [s/n]? "
    confirmacao = gets.chomp
  
    if confirmacao == "s"
      limpar_tela()
      msg_inicial()
      Agenda.adicionar(nome, telefone, email)
      sleep(2)
    end
  end
end
