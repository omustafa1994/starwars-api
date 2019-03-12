require 'spec_helper'

describe 'starwars api' do 

  before(:all) do 
    @starwars_people = ParseJson.new(HTTParty::get("https://swapi.co/api/people/1").body).json_data
    @starwars_planet = ParseJson.new(HTTParty::get("https://swapi.co/api/planets/1").body).json_data
  end

  it 'should be a hash' do 
    expect(@starwars_people).to be_kind_of(Hash)
  end

  it "should contain name Luke Skywalker" do
    expect(@starwars_people["name"]).to eq "Luke Skywalker"
  end
 
  it "should contain hair color of blond" do
    expect(@starwars_people["hair_color"]).to eq "blond"
  end

  it "should contain skin color of fair" do
    expect(@starwars_people["skin_color"]).to eq "fair"
  end

  it "should contain eye color of blue" do
    expect(@starwars_people["eye_color"]).to eq "blue"
  end

  it "should contain gender of male" do
    expect(@starwars_people["gender"]).to eq "male"
  end

  it "should contain name Tatooine" do
    expect(@starwars_planet["name"]).to eq "Tatooine"
  end

end
