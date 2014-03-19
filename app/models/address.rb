class Address < ActiveRecord::Base
	belongs_to :user
	belongs_to :gym

	validates_presence_of :street, :message => "O logradouro deve ser informado."
	validates_presence_of :neighborhood, :message => "O bairro deve ser informado."
	validates_presence_of :zip_code, :message => "O CEP deve ser informado."

end