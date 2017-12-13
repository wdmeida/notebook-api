namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do

    puts 'Cadastrando os tipos de contatos...'
    
    kinds = %w(Amigo Comercial Conhecido)

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end
    
    puts 'Tipos de Contatos cadastrados com sucesso!'


    puts 'Cadastrando os contatos...'
    
    kinds = Kind.all

    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(65.years.ago, 18.years.ago),
        kind: kinds.sample
      )
    end
    
    puts 'Contatos cadastrados com sucesso!'
  end
end