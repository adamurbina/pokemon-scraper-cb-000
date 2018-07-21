class Pokemon

    attr_accessor :name, :type, :db, :id

    @@all = []

    def initialize(id, name, type, db)
        @id = id
        @name = name
        @type = type
        @db = db
        @@all << self
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);",name, type)
    end

    def self.find(id, db)
        retrieve_pokemon = db.execute("SELECT * FROM pokemon WHERE pokemon.id = ?;",id)
        new_id = retrieve_pokemon[0]
        name = retrieve_pokemon[1]
        type = retrieve_pokemon[2]
        pokemon = Pokemon.save(new_id, name, type, db)
        #pokemon
    end


end
