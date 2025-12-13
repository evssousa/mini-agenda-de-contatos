require_relative "limpar_tela"
require "csv"

module Agenda
    FILE_PATH = "data/contatos.csv"

    # Adicionar contato
    def self.adicionar(nome, telefone, email)
        CSV.open(FILE_PATH, "a") do |csv|
            csv << [nome, telefone, email]
        end
        puts "\nContato adicionado com sucesso!"
    end

    # Listar contatos
    def self.listar
        if File.exist?(FILE_PATH) # verifica se o arquivo existe
            contatos = CSV.read(FILE_PATH) # se existir, o arquivo é guardado na variável

            if contatos.empty? # verifica se o arquivo está vazio
                puts "\nNenhum contato encontrado."
            else
                puts "\nLista de Contatos"
                contatos.each_with_index do |contato, i|
                    puts "#{i+1}. Nome: #{contato[0]} | Telefone: #{contato[1]} | Email: #{contato[2]}"
                end
            end

        else
            puts "Arquivo de contatos não existe ainda."
        end
    end

    # Buscar contato
    def self.procurar(nome)
        if File.exist?(FILE_PATH)
            contatos = CSV.read(FILE_PATH)
            resultado = contatos.find { |c| c[0].downcase == nome.downcase }

            if resultado
                puts "Contato encontrado: #{resultado[0]} | #{resultado[1]} | #{resultado[2]}"
            else
                puts "Nenhum contato encontrado com o nome #{nome}"
            end

        else
            puts "Arquivo de contatos não existe ainda."
        end
    end
end