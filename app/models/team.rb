class Team
  attr_reader :name, :motto
  @@all = []
  def initialize(args)
    @name = args["team"]["name"]
    @motto = args["team"]["motto"]
    @@all << self
  end
  def self.all
    @@all
  end
end