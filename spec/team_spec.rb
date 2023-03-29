require './lib/player'
require './lib/team'

RSpec.describe Team do
  it 'exists' do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team).to be_a Team
    
  end
  it "has attributes" do
    team = Team.new("Dodgers", "Los Angeles")
    expect(team.team_name).to eq("Dodgers")
    expect(team.city).to eq("Los Angeles")
  end

  it "can add players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    expect(team.roster).to eq([player_1])
    team.add_player(player_2)
    expect(team.roster).to eq([player_1, player_2])
    team.add_player(player_3)
    expect(team.roster).to eq([player_1, player_2, player_3])
    team.add_player(player_4)
    expect(team.roster).to eq([player_1, player_2, player_3, player_4])
  end

  it "can find long_term_players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.long_term_players).to eq([player_1, player_3])
  end 

  it "can find short_term_players" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.short_term_players).to eq([player_2, player_4])
  end 

  it "can find team total_value" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.total_value).to eq(2350000)
  end

  it "can find team.details" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    expect(team.details).to eq(4)
  end
end