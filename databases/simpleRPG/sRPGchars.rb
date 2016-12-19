## Simple RPG Character Creator

## require sqlite3
require 'sqlite3'

## create a characters database
## attributes: 
## 	id, 
# 	name, 
# 	class (warrior, healer, rogue, mage), 
# 		(calling this "role" to avoid keyword problems) 
# 	strength 
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
	# def roll_stats(role)
	# 	stats = {}
	# 	stats(strength)
	# end
  db.execute("INSERT INTO characters (name, role) VALUES (?, ?)", [name, role])
end

create_char(db, "Tarien", "rogue")

# def roll_stats(db, name, role)
# 	strength 
# end
## create a method to randomly generate stats, and modify them according to class

## create method to neatly display all characters

## create a loop to keep creating characters or display them

