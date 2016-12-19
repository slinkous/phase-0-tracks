## Simple RPG Character Creator

## require sqlite3
require 'sqlite3'

## create a characters database
## attributes: 
## 	id, 
# 	name, 
# 	class (warrior, healer, rogue, mage), 
# 		(calling this "role" to avoid keyword problems) 
# 	strength (all stats are /20, but should be at least 2 and not initialize greater than 18)
# 	intelligence 
# 	constitution
# 	wisdom
db = SQLite3::Database.new("characters.db")
db.results_as_hash = true
create_character_table = <<-SQL
  CREATE TABLE IF NOT EXISTS characters(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    role VARCHAR(255),
    strength INTEGER,
    intelligence INTEGER,
    constitution INTEGER,
    wisdom INTEGER	
  )
SQL

db.execute(create_character_table)

def create_char(db, name, role)
	def roll_stats(role)
		stats = {
			strength: rand(10) + 2,
			intelligence: rand(10) + 2,
			constitution: rand(10) + 2,
			wisdom: rand(10) + 2
		}
		if role == "warrior"
			stats[:strength] += 3
		elsif role == "rogue"
			stats[:intelligence] += 3
		elsif role == "mage"
			stats[:wisdom] += 3
		elsif role == "healer"
			stats[:constitution] +=3
		end
		stats
	end
	char_stats = roll_stats(role)

  db.execute("INSERT INTO characters (name, role, strength, intelligence, constitution, wisdom) VALUES (?, ?, ?, ?, ?, ?)", [name.capitalize, role, char_stats[:strength], char_stats[:intelligence], char_stats[:constitution], char_stats[:wisdom]])
end

# create_char(db, "Tarien", "rogue")
create_char(db, "A'mael", "rogue")

# def roll_stats(db, name, role)
# 	strength 
# end
## create a method to randomly generate stats, and modify them according to class

## create method to neatly display all characters

## create a loop to keep creating characters or display them

