class List
  include ::BeerAdvocate

  def self.all
    #get all lists published on the site
    response = BeerAdvocate.fetch("lists/popular")
    if response.is_a?(Mechanize::Page)
      response.search("//h3[text()='Lists']/following-sibling::li/a").
        map { |item| { :id => item[:href].gsub(/\/lists\//, ""), :name => item.content} }
    end
  end

  def self.find(list)
    #get all beers in a particular list
    response = BeerAdvocate.fetch("lists/" + list)
    if response.is_a?(Mechanize::Page)
      response.search("//a[contains(@href, '/beer/profile')]/b/..").
        map { |item| { :id => parameterize_profile_url(item[:href]), :name => item.content} }
    end
  end

  def self.parameterize_profile_url(full_url)
    full_url.gsub(/\/beer\/profile\//, '').gsub(/\//, '-')
  end
end
