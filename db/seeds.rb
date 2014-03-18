#encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


if User.count < 1
  puts "Criando Perfis Padrões..."
  profile = UserProfile.create(:name => "Administrador")
  UserProfile.create(:name => "Diretor")
  UserProfile.create(:name => "Gerente")
  UserProfile.create(:name => "Professor")
  UserProfile.create(:name => "Aluno")

  puts "Criando Usuários Padrões..."
  usr = User.new
  usr.password = "123456"
  usr.password_confirmation = "123456"
  usr.name = "Administrador"
  usr.cpf = "00000000000"
  usr.email = "admin@acad.com.br"
  usr.is_admin = true
  usr.user_profile_id = profile.id
  usr.save!

  usr = User.new
  usr.password = "123456"
  usr.password_confirmation = "123456"
  usr.name = "Usuário comum"
  usr.cpf = "111111111111"
  usr.email = "user@acad.com.br"
  usr.is_admin = false
  usr.user_profile_id = profile.id
  usr.save!
end