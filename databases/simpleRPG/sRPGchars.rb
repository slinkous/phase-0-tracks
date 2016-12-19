## Simple RPG Character Creator

require 'sqlite3'

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
# Randomly generates stats (out of 20), with at least 2
	def roll_stats(role)
		stats = {
			strength: rand(10) + 2,
			intelligence: rand(10) + 2,
			constitution: rand(10) + 2,
			wisdom: rand(10) + 2
		}
# Adjusts for bonuses based on role
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

puts "How many characters in your party to create?"
char_num = gets.chomp.to_i
i = 0
while i < char_num
	puts "What is the character's name?"
	name = gets.chomp

	puts "What is the character's class/role: [W]arrior, [R]ogue, [M]age, [H]ealer ?"
	role = gets.chomp
	#standardizes the response to ensure role bonuses
	if role = "W" || "WARRIOR"
		role = "warrior"
	elsif role = "R" || "ROGUE"
		role = "rogue"
	elsif role = "M" || "MAGE"
		role = "mage"
	elsif role = "H" || "HEALER"
		role = "healer"
	end

	create_char(db, name, role)
	puts "Created new character #{name}, the #{role}."
	i += 1
end


# create_char(db, "Tarien", "rogue")
# create_char(db, "A'mael", "rogue")

## create method to neatly display all characters

## create a loop to keep creating characters or display them

