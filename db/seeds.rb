# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#creando administradores
Usuario.create(email: 'admin@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'admin')
Usuario.create(email: 'admin2@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'admin2')
Usuario.create(email: 'admin3@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'admin3')

#creando solo un administrador
Usuario.create(email: 'superadmin@mimemo.cl', password: '12345678', tipo_de_usuario: 1, nombre: 'superadmin')

#creando ejecutantes pero quedan como clientes
Usuario.create(email: 'ejecutante@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante')
Usuario.create(email: 'ejecutante2@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante2')
Usuario.create(email: 'ejecutante3@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante3')
Usuario.create(email: 'ejecutante4@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante4')

#creando clientes
Usuario.create(email: 'cliente@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente')
Usuario.create(email: 'cliente2@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente2')
Usuario.create(email: 'cliente3@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente3')
Usuario.create(email: 'cliente4@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente4')
Usuario.create(email: 'cliente5@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente5')
Usuario.create(email: 'cliente6@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente6')
Usuario.create(email: 'cliente7@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente7')
Usuario.create(email: 'cliente8@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'cliente8')

#creando algunas empresas
Empresa.create(nombre_fantasia: 'falabella', nombre_comercial: 'falabella', correo: 'falabella@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'ripley', nombre_comercial: 'ripley', correo: 'ripley@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'andesgear', nombre_comercial: 'andesgear', correo: 'andesgear@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'paris', nombre_comercial: 'paris', correo: 'paris@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'bancochile', nombre_comercial: 'bancochile', correo: 'bancochile@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'hospitalcurico', nombre_comercial: 'hospitalcurico', correo: 'hospitalcurico@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'soler', nombre_comercial: 'soler', correo: 'soler@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'doggis', nombre_comercial: 'doggis', correo: 'doggis@mimemo.cl', direccion: 'curico')
Empresa.create(nombre_fantasia: 'juanmaestro', nombre_comercial: 'juanmaestro', correo: 'juanmaestro@mimemo.cl', direccion: 'curico')
