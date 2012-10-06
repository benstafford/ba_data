class List
  include ::BeerAdvocate

  def self.all
    #query to get <a> tags for all beer lists
    BeerAdvocate.fetch("/lists/popular").
      search("//h3[text()='Lists']/following-sibling::li/a")

    #each[:href] and each.content
  end

  def self.find(list)
    BeerAdvocate::fetch("/lists/" + list).
      search("//a[contains(@href, '/beer/profile')]")
  end
end
