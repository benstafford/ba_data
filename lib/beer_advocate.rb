module BeerAdvocate
  BASE_URL = "http://beeradvocate.com/"

  def self.fetch(path)
    agent = Mechanize.new
    begin
      agent.get(BASE_URL + path)
    rescue  Mechanize::ResponseReadError => e
      e.force_parse
    rescue SocketError => e
      "Connection Error"
    end
  end
end
