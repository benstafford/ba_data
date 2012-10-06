require 'spec_helper'

describe ListsController do
  use_vcr_cassette "lists"

  describe "GET index" do
    it "should respond with JSON by default" do
      get :index, {:format => :json }
      response.should be_success
    end

    it "should respond with HTML if specified" do
      get :index, {:format => :html}
      response.should_not be_success
    end
  end
end
