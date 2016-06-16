class Bar
  attr_reader :name

  def initialize(name)
    @name = name
    @bartenders = []
    @terminal = Terminal.new
  end
end

