require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# code here
robert = Actor.new("Robert Downey Jr.")
chris = Actor.new("Chris Hemsworth")
tom = Actor.new("Tom Holland")
scarlett = Actor.new("Scarlett Johansson")
charlie = Actor.new("Charlie Cox")

iron_man = Character.new("Iron Man", robert)
thor = Character.new("Thor", chris)
spider_man = Character.new("Spider Man", tom)
black_widow = Character.new("Black Widow", scarlett)
daredevil = Character.new("Daredevil", charlie)

avengers = Movie.new("Avengers")
avengers2 = Movie.new("Avengers 2")
daredevil_movie = Movie.new("Daredevil")

agents_of_shield = Show.new("Agents of Shield")
daredevil_show = Show.new("Daredevil")

show_ap1 = ShowAppearance.new(daredevil_show, daredevil)
show_ap2 = ShowAppearance.new(agents_of_shield, iron_man)
show_ap3 = ShowAppearance.new(agents_of_shield, black_widow)
show_ap4 = ShowAppearance.new(agents_of_shield, thor)
show_ap5 = ShowAppearance.new(agents_of_shield, spider_man)

movie_ap1 = MovieAppearance.new(avengers, iron_man)
movie_ap2 = MovieAppearance.new(avengers, black_widow)
movie_ap3 = MovieAppearance.new(avengers, thor)
movie_ap5 = MovieAppearance.new(avengers2, iron_man)
movie_ap6 = MovieAppearance.new(avengers2, black_widow)
movie_ap7 = MovieAppearance.new(avengers2, thor)
movie_ap8 = MovieAppearance.new(avengers, spider_man)

Pry.start
