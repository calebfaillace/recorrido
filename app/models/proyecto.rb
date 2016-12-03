class Proyecto < ActiveRecord::Base
	belongs_to :constructora
	has_many :exteriors
	has_many :interiors
	has_one :recorrido_virtual
end
