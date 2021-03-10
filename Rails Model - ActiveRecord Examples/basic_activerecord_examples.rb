# Active Record provides a rich API for accessing data within a database.
# Below are a few examples of different data access methods provided by Active Record.

Animal.all 
# return a collection with all animals
Animal.first 
# return the first animal added
Animal.last 
# return the last animal added
Animal.find(4) 
# return the animal having id=4
Animal.find_by(name: 'Dog') 
# return the first animal named turtle
Animal.find_by_name 'Dog' 
# return the first animal named turtle
Animal.exists?(4)
# check if animal with id=4 exists in the animals table.
Animal.exists?(name: "bird") 
# check if animal named "bird" exists in the animals table; change to "Bird".
Animal.count 
# count the number of animal objects created
Animal.find_by(active: 'true') 
# return the first active animal record from the animals table
Animal.where(active: 'true') 
# returns all the records where active:true
Animal.order('name') 
# orders all the records alphabetically by name, in an ascending way
Animal.order('name desc') 
Animal.order('name').reverse
# orders all the records alphabetically by name, in an descending way
a = Animal.new
# creates an empty Animal object
a.save! 
# saves (do without ! first to see silent fail, then with ! to see error)
a.name = "Turtle"
a.save!
# saves the record
a.destroy
# removes the record
Animal.create({name: "Snake", active: false})
# alternate way of creating
Animal.last.delete
Animal.create({name: "Snake", active: false})
Animal.last.destroy
# contrast delete vs destroy (transaction callback)
