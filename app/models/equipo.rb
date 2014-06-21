class Equipo < ActiveRecord::Base
	has_many :users
	has_many :proyectos
end
