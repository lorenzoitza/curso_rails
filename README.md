##Curso de Ruby on Rails

###Aplicación de ejemplo


###Retos:

- Bloque 1:
	- Crear app
	- Verificar que todo corra bien

- Bloque 2:
	- Hacer estáticas para las páginas (Home, About, Contact)
	- Creación de vistas y funciones en controlador
	- Hacer root la accion de Home
	- Hacer un helper para titulo dinámico
- Bloque 3:
	- Generar un blogpost con las 7 acciones (Index, Show, New, Create, Edit, Update, Destroy), con sus vistas (Modelo Blogpost, atributos: title:string, content:text)
	- Generar una migración para agregar un user_id(integer) a la tabla de Blogposts
- Bloque 4:
	- Implementar foundation - [Instalación](http://foundation.zurb.com/docs/rails.html)
    	- Link para [Layout](https://gist.github.com/rkrdo/5118049)
	- Agregar validaciones de Blogpost (uniqueness of title, presence of title,content)
  - Hacer que se desaparezca el mensaje de validacion de la forma cuando se presione la "x"
- Bloque 5:
	- Creación de modelo de comments (poster:string, content:text)
	- Hacer relacion Blogpost con comments (a nivel modelo)
- Bloque 6
	- Implementar forma de comments en la vista de show del blogpost
-Bloque 7
	- AJAX en comments

<br>

Elaborado por:

[@kurenn](http://twitter.com/kurenn) (Abraham Kuri)

[@rkrdo89](http://twitter.com/rkrdo89) (Ricardo Cruz)
