class CLI

  def initialize
    @prompt = TTY::Prompt.new
  end

  # find or create user
  def find_or_create_user
    name = @prompt.ask("What's your name?: ")
    @user = Fan.find_or_create_by(name: name)
  end

  def welcome
    puts "Welcome, #{@user.name}!"
  end

  # display current artists they like
  def display_current_artists
    puts "You currently like: "
    @user.artists.each do |artist|
      puts artist.name
    end
  end

  # ask them if they want to add another one
  def add_another_artist?
    @prompt.yes?("Would you like to add another artist?")
  end

  def add_artist
    artist_name = @prompt.ask("Cool! What's the artist's name?: ")
    artist = Artist.find_or_create_by(name: artist_name)
    Fandom.create(fan: @user, artist: artist)
    puts "Done. You now like: #{artist.name}!"
  end

  def bye
    puts "Ok, bye bye!"
  end

  def run
    find_or_create_user
    welcome
    display_current_artists
    if add_another_artist?
      add_artist
    else
      bye
    end
  end
end
