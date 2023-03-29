class Team
  attr_reader :team_name, :city, :roster
  def initialize(team_name, city)
    @team_name =team_name
    @city = city
    @roster = []
  end
  
  def add_player(player)
    @roster << player
  end

  def long_term_players
    @long_term = []
    @roster.each do |player|
      if player.contract_length > 24
        @long_term << player
      end
    end
    @long_term
  end

  def short_term_players
    @short_term = []
    @roster.each do |player|
      if player.contract_length <= 24
        @short_term << player
      end
    end
    @short_term
  end

  def total_value
    @roster.map(&:monthly_cost).reduce(0, :+)
  end

  def details
    @roster.count
  end
end