# encoding: utf-8
class User < ActiveRecord::Base

  belongs_to  :user_profile
  belongs_to  :gender
  has_many    :user_plans
  has_many    :addressess


  acts_as_authentic do |c|
  end

#  acts_as_authentic do |c|
#    c.perishable_token_valid_for = 30.minutes
#    c.validate_login_field = false

#    c.merge_validates_uniqueness_of_login_field_options(:message => 'Já existe um usuário com este mesmo CPF.')
#    c.merge_validates_format_of_email_field_options(:message    => 'Favor informar um e-mail válido')
#    c.merge_validates_confirmation_of_password_field_options :message => 'A senha e a confirmação da senha estão diferentes.'
#    c.merge_validates_length_of_password_field_options :message=> "A senha deve ter pelo menos 4 caracteres."
#    c.merge_validates_length_of_password_confirmation_field_options :message=> "A confirmação de senha deve ter pelo menos 4 caracteres."
#    c.ignore_blank_passwords = true
#    c.logged_in_timeout = 30.minutes

#  end

  validates_presence_of :name, :message => "Favor preencher o nome do usuário."
  validates_presence_of :cpf, :message => "Favor preencher o CPF."
  validates_presence_of :user_profile_id, :message => "Favor escolher um perfil de usuário."

  validates_uniqueness_of :cpf, :message => "Já existe um usuário com este mesmo CPF."

  #validates_uniqueness_of :registration, :message => "Já existe um usuário com este mesmo CPF."

  #validates_format_of   :cpf,
  #                      :with => /^\d{3}\.\d{3}\.\d{3}\-\d{2}$,
  #                      :message => "O CPF informado não é válido"


  #validates_format_of   :email,
  #                      :with       => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,
  #                      :message    => 'Favor informar um e-mail válido'

end