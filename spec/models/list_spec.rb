require 'spec_helper'

describe List do
  use_vcr_cassette "lists"

  describe ".all" do
    let(:path) { "/lists/popular" }
    let(:request) { List.all }

    it "returns XML elements" do
      request.first.class.should == Nokogiri::XML::Element
    end
  end

  describe ".find" do
    let(:list) { "popular" }
    let(:request) { List.find(list) }

    it "returns XML elements" do
      request.first.class.should == Nokogiri::XML::Element
    end

    it "returns results with beer/profile URLs" do
      request.first[:href].should include("/beer/profile")
    end

  end
end
