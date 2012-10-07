class Beer
  include ::BeerAdvocate

  def self.find(profile_path)
    response = BeerAdvocate.fetch("beer/profile/" + profile_path.gsub(/-/, "/"))

    if response
      beer_name = response.search("//h1").text
      reviewers_rating = response.search("//td[text()[contains(., 'BA SCORE')]]/span").text
      brothers_rating = response.search("//td[text()[contains(., 'THE BROS')]]/span").text

      if beer_name.include?("404 Not Found")
        return nil
      end

      { :beer_name => beer_name,
        :reviewers_rating => reviewers_rating,
        :brothers_rating => brothers_rating }
    end
  end
end
