class Beer
  include ::BeerAdvocate

  def self.find(profile_path)
    #get all beers in a particular list
    response = BeerAdvocate::fetch("beer/profile/" + profile_path.gsub(/-/, "/"))

    beer_name = response.search("//h1").text
    reviewers_rating = response.search("//td[text()[contains(., 'BA SCORE')]]/span").text
    brothers_rating = response.search("//td[text()[contains(., 'THE BROS')]]/span").text

    { :beer_name => beer_name,
      :reviewers_rating => reviewers_rating,
      :brothers_rating => brothers_rating }

    #TODO: what data to get?  Started with reviewers score and/or BA score
  end
end
