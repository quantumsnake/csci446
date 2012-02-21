# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
WorldArticle.delete_all

WorldArticle.create(title: 'Happy Thoughts',
                    author:'Butt Knuckle' ,
                    body:  %{<p>This class is a great learning experience and I am glad to be apart of it.</p>}) 