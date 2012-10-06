class List
  include ::BeerAdvocate

  def self.all
    response = BeerAdvocate::fetch("/lists/popular")
    #query to get <a> tags for all beer lists
    results = response.search("//h3[text()='Lists']/following-sibling::li/a")

    #each[:href] and each.content
  end

  def self.find(list)
    response = BeerAdvocate::fetch("/lists/" + list)
    results = response.search("//a[contains(@href, '/beer/profile')]")
  end
end
