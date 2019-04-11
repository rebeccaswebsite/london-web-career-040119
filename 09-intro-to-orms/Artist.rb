class Artist
  attr_reader :id, :name

  def initialize(id: nil, name:)
    @id = id
    @name = name
  end

  def self.all
    artist_hashes = DB.execute "SELECT * FROM artists;"
    artist_hashes.map { |artist_hash| parse_artist_hash(artist_hash) }
  end

  def self.parse_artist_hash(artist_hash)
    Artist.new(id: artist_hash["ArtistId"], name: artist_hash["Name"])
  end

  def save
    DB.execute("INSERT INTO artists (name) VALUES (?)", @name)
    Artist.last_artist
  end

  def self.create(name:)
    artist = Artist.new(name: name)
    artist.save
  end

  def self.last_artist
    artist_hashes = DB.execute "SELECT * FROM artists ORDER BY ArtistId DESC LIMIT 1;"
    artist_hash = artist_hashes.first
    self.parse_artist_hash(artist_hash)
  end

  def greet
    puts "Hey I'm #{@name}!"
  end

  def name=(new_name)
    @name = new_name
    DB.execute("UPDATE artists SET name = ? WHERE artistId = ?;", new_name, @id)
  end

  def destroy
    DB.execute("DELETE FROM artists WHERE artistId = ?;", @id)
    @id = nil
  end

  def self.find(id)
    artist_hash = DB.execute("SELECT * FROM artists WHERE artistId = ? LIMIT 1;", id)[0]
    if artist_hash
      parse_artist_hash(artist_hash)
    else
      "Artist not found."
    end
  end

  def self.find_all_by_name(name)
    artist_hashes = DB.execute("SELECT * FROM artists WHERE name = ?;", name)
    artist_hashes.map { |artist_hash| parse_artist_hash(artist_hash) }
  end

  def albums
    DB.execute "SELECT * FROM albums WHERE artistId = ?;", @id
  end

end
