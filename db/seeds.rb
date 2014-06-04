# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rol1 =Rol.create(:name => 'Administrador')
rol2 =Rol.create(:name => 'Jefe')
rol3 =Rol.create(:name => 'Miembro')
rol4 =Rol.create(:name => 'Organizador')
main_admin = User.create(:email => 'admin@gmail.com', :password => '12345678', 
       :password_confirmation => '12345678', :rol_id => '1')