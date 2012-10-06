require 'spec_helper'

describe ListsController do
  use_vcr_cassette "lists"

  describe "GET index" do
    it "should respond with JSON by default" do
      get :index
      response.content_type.should == "application/json"
    end

    it "should respond with HTML if specified" do
      get :index, {:format => :html}
      response.content_type.should == "text/html"
    end
  end
end
