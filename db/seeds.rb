# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#creando solo un super dministrador
Usuario.create(email: 'superadmin@mimemo.cl', password: '12345678', tipo_de_usuario: 1, nombre: 'Super Administrador')

#creando administradores
Usuario.create(email: 'admin1@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'Administrador 1')
Usuario.create(email: 'admin2@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'Administrador 2')
Usuario.create(email: 'admin3@mimemo.cl', password: '12345678', tipo_de_usuario: 2, nombre: 'Administrador 3')

#creando ejecutantes pero quedan como clientes
Usuario.create(email: 'ejecutante1@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante')
Usuario.create(email: 'ejecutante2@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante2')
Usuario.create(email: 'ejecutante3@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante3')
Usuario.create(email: 'ejecutante4@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'ejecutante4')

#creando clientes
Usuario.create(email: 'cliente1@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 1')
Usuario.create(email: 'cliente2@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 2')
Usuario.create(email: 'cliente3@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 3')
Usuario.create(email: 'cliente4@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 4')
Usuario.create(email: 'cliente5@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 5')
Usuario.create(email: 'cliente6@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 6')
Usuario.create(email: 'cliente7@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 7')
Usuario.create(email: 'cliente8@mimemo.cl', password: '12345678', tipo_de_usuario: 4, nombre: 'Cliente 8')

#creando algunas empresas
Empresa.create(nombre_fantasia: 'Falabella', nombre_comercial: 'Falabella', correo: 'falabella@mimemo.cl', web: 'www.falabella.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Ripley', nombre_comercial: 'Ripley', correo: 'ripley@mimemo.cl', web: 'www.ripley.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Andesgear', nombre_comercial: 'Andesgear', correo: 'andesgear@mimemo.cl', web: 'www.andesgear.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Paris', nombre_comercial: 'Paris', correo: 'paris@mimemo.cl', web: 'www.paris.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Banco de Chile', nombre_comercial: 'Banco de Chile', correo: 'bancochile@mimemo.cl', web: 'www.bancochile.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Hospital de Curicó', nombre_comercial: 'Hospital de Curico', correo: 'hospitalcurico@mimemo.cl', web: 'www.hospitalcurico.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Soler', nombre_comercial: 'Soler', correo: 'soler@mimemo.cl', web: 'www.soler.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Doggis', nombre_comercial: 'Doggis', correo: 'doggis@mimemo.cl', web: 'www.doggis.com', telefono: '075-226587', direccion: 'Curicó')
Empresa.create(nombre_fantasia: 'Juan Maestro', nombre_comercial: 'Juan Maestro', correo: 'juanmaestro@mimemo.cl', web: 'www.juanmaestro.com', telefono: '075-226587', direccion: 'Curicó')
