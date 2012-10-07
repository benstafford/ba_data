require 'spec_helper'

describe Beer do
  use_vcr_cassette "beer"

  describe ".find" do
    let(:beer) { "863-21690" }
    let(:request) { Beer.find(beer) }

    it "returns a Hash" do
      request.is_a?(Hash).should be_true
    end

    it "returns hash with correct keys" do
      request.keys.should == [:beer_name, :reviewers_rating, :brothers_rating]
    end
  end
end
