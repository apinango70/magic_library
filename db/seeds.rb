require 'faker'

# Crear 10 usuarios utilizando Faker
10.times do
  User.create(
    email: Faker::Internet.email,
    password: 123456,  # Todos los usuarios tendrán la misma contraseña
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    role: rand(0..1) # Genera un valor aleatorio entre 0 y 1 para el campo role
  )
end

puts "Se crearon 10 usuarios con Faker."


# Creo 10 generos literarios utilizando Faker
10.times do
  LiteraryGenre.create(name: Faker::Book.genre)
end

puts "Se crearon 10 géneros literarios con Faker."


# Creo 10 autores utilizando Faker
10.times do
  Author.create(
    name: Faker::Book.author,
    information: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4)
  )
end

puts "Se crearon 10 autores con Faker."




# los Id's de los autores y géneros literarios los tomaré de la base de datos
author_ids = Author.pluck(:id)
genre_ids = LiteraryGenre.pluck(:id)

# Creo 50 libros utilizando Faker
50.times do
  Book.create(
    title: Faker::Book.title,
    author_id: author_ids.sample,
    literary_genre_id: genre_ids.sample,
    availability: [true, false].sample,
    synopsys: Faker::Lorem.paragraph(sentence_count: 3, supplemental: false, random_sentences_to_add: 4)
  )
end

puts "50 libros creados."
