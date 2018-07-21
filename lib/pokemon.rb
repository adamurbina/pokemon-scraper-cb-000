class Pokemon

    attr_accessor :name, :type, :db

    @@all = []

    def initialize(name, type, db)
        @name = name
        @type = type
        @db = db
    end

    def save
        @@all << self
    end

    def

end
