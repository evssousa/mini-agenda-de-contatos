require 'csv'

def add
    CSV.open("../data/contatos.csv", "w") do |csv|
        csv << [nome, telefone, email]
end

add()