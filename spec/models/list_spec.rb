require 'spec_helper'

describe List do
  use_vcr_cassette "lists"

  describe ".all" do
    let(:path) { "/lists/popular" }
    let(:request) { List.all }

    it "returns array with multiple elements" do
      request.length.should be > 1
    end

    it "returns array of hashes with correct keys" do
      request.first.keys.should == [:id, :name]
    end
  end

  describe ".find" do
    let(:list) { "popular" }
    let(:request) { List.find(list) }

    it "returns a single element" do
      request.length.should be > 1
    end

    it "returns array of hashes with correct keys" do
      request.first.keys.should == [:id, :name]
    end
  end
end
