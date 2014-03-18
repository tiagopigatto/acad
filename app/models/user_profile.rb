# encoding: utf-8
class UserProfile < ActiveRecord::Base

  has_many :users
  
  validates_presence_of :name, :message => "Favor preencher o nome do perfil."
  
end
