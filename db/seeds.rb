# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

article_list = [
  [ "¿Lorem ipsum dolor sit amet, consectetur adipiscing elit?", "ed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 2 ],
  [ "Cuatro formas de  tecnología en tu empresa", "ed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud   laboris nisi ut  ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla .  sint  cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 2 ],
  [ "Cómo optimizar tu trabajo en NodeJS y Grunt", "No basta con seguir los pasos de esta guía: te invito a probar, evaluar y jugar con las posibilidades. Tu mejor escuela es la práctica. Con el tiempo verás que tienes en tus manos una gran herramienta.", 2 ],
  [ "Tres tips infalibles para inglés", "Durante muchos años he escuchado que aprender un idioma es una de las metas para iniciar un nuevo año, y el idioma más destacado de todos es el . Pero,  forma más efectiva y sobre todo que sea flexible? A lo largo de estos años he encontrado que un gran porcentaje de las personas que lo , buscaron un método online ????.", 2 ],

  [ "tecnología en tu empresa?", "Seguramente ya has escuchado que la industria de los videojuegos tuvo el doble de ganancias que Hollywood en 2017. La industria de los videojuegos viene pisándole los talones a la gran pantalla desde desde el 2013, y podrías creer entonces que crear tu propia empresa de videojuegos es el futuro, pero la realidad es que hacer un videojuego no es fácil.", 1 ],
  [ "Cuatro formas de implementar tecnología en tu empresa", "La tecnología es una gran aliada de la comunicación en el proceso de Transformación Digital. Tanto para la comunicación interna como externa, puedes elegir una herramienta que responda a las necesidades que tiene tu equipo y centralizar la información y comunicación en ella.", 1 ],
  [ "Cómo automatizar y optimizar tu trabajo en NodeJS y Grunt", "No basta con seguir los pasos de esta guía: te invito a probar, evaluar y jugar con las posibilidades. Tu mejor escuela es la práctica. Con el tiempo verás que tienes en tus manos una gran herramienta.", 1 ],
  [ "Tres tips infalibles para aprender inglés online", "Durante muchos años he escuchado que aprender un idioma es una de las metas para iniciar un nuevo año, y el idioma más destacado de todos es el inglés. Pero, ¿cómo aprenderlo de la forma más efectiva y sobre todo que sea flexible? A lo largo de estos años he encontrado que un gran porcentaje de las personas que lo aprendieron, buscaron un método online ????.", 1 ]
]

  article_list.each do |title, body, user_id|
    Article.create( title: title, body: body, user_id: user_id )
  end