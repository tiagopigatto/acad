class Plan < ActiveRecord::Base
	has_many	:user_plans

	validates_presence_of	:name, :message => "O plano deve ter um nome."
	validates_presence_of	:value, :message => "O plano deve possuir um valor."
	validates_presence_of	:description, :message => "O plano deve ter um descricao."
end