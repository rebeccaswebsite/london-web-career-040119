# Intro to SQL

1. Install the SQLite Browser if you haven't already [here](http://sqlitebrowser.org/)
2. Open the SQLite Browser and click 'File -> Open DataBase'
3. Choose the `music.db` file from this repo. This database is open source and maintained by Microsoft (SQL is no fun if you don't have any data)
4. Click the of that query in the box below

## Challenges

1. Write the SQL to return all of the rows in the artists table?

```SQL
SELECT * FROM artists;
```

2. Write the SQL to select the artist with the name "Black Sabbath"

```SQL
SELECT * FROM artists WHERE name is "Black Sabbath";
```

3. Write the SQL to create a table named 'fans' with an autoincrementing ID that's a primary key and a name field of type text

```sql
CREATE TABLE fans (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT);
```

4. Write the SQL to alter the fans table to have a artist_id column type integer

```sql
ALTER TABLE fans ADD COLUMN aritst_id INTEGER;
```

5. Write the SQL to add yourself as a fan of the Black Eyed Peas? ArtistId **169**

```sql
INSERT INTO fans (name, ArtistId) VALUES ("Nicolas", 169);
```

6. Write the SQL to return fans that are not fans of the black eyed peas.

```sql
SELECT * FROM fans WHERE ArtistId is not 169;
```

7. Write the SQL to display an artists name next to their album title

```sql
SELECT artists.name as "Artist Name", albums.title as "Album Title"
FROM albums
JOIN artists ON artists.ArtistId = albums.ArtistId;
```

8. Write the SQL to show all the fans with their respective band names

```sql
SELECT fans.name, artists.name
FROM fans
JOIN artists ON fans.ArtistId = artists.ArtistId;
```

9. Write the SQL to display artist name, album name and number of tracks on that album

```sql
```

10. Write the SQL to return the name of all of the artists in the 'Pop' Genre

```sql
```
