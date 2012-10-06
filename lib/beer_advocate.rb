module BeerAdvocate
  BASE_URL = "http://beeradvocate.com/"

  def self.fetch(path)
    agent = Mechanize.new
    agent.get(BASE_URL + path)
  end
end
