require 'spec_helper'

describe List do
  use_vcr_cassette "lists"

  describe ".all" do
    let(:path) { "/lists/popular" }
    let(:request) { List.all }

    it "returns XML elements" do
      request.length.should be > 1
    end
  end

  describe ".find" do
    let(:list) { "popular" }
    let(:request) { List.find(list) }

    it "returns XML elements" do
      request.length.should  be > 1
    end
  end
end
