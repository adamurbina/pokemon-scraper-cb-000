class Pokemon

    attr_accessor :name, :type, :db

    @@all = []

    def initialize(name, type, db)
        @name = name
        @type = type
        @db = db
        @@all << self
    end

    def self.save(name, type, db)
        db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?);",name, type)
    end


end
