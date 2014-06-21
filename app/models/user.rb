class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
has_one :rols
belongs_to :equipo
#before_create :begin_usu
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

       #  sign_out_via = :delete
end
