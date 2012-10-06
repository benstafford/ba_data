class List
  include ::BeerAdvocate

  PATH = "/lists/popular"

  def self.all
    response = BeerAdvocate::fetch(PATH)
    #query to get <a> tags for all beer lists
    results = response.search("//h3[text()='Lists']/following-sibling::li/a")

    #each[:href] and each.content


  end
end
