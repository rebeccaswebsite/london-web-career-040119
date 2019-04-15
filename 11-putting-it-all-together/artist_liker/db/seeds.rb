
metallica = Artist.create(name: "Metallica")
swift = Artist.create(name: "Taylor Swift")
derulo = Artist.create(name: "Jason Derulo")


nico = Fan.create(name: "Nicolas")
dunia = Fan.create(name: "Dunia")
ivan = Fan.create(name: "Ivan")

f1 = Fandom.create(artist: metallica, fan: nico)
f2 = Fandom.create(artist: swift, fan: nico)
f3 = Fandom.create(artist: derulo, fan: nico)
f4 = Fandom.create(artist: metallica, fan: ivan)
f5 = Fandom.create(artist: swift, fan: dunia)
