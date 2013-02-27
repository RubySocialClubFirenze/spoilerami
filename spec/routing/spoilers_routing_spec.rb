require "spec_helper"

describe SpoilersController do
  describe "routing" do

    it "routes to #index" do
      get("/spoilers").should route_to("spoilers#index")
    end

    it "routes to #new" do
      get("/spoilers/new").should route_to("spoilers#new")
    end

    it "routes to #show" do
      get("/spoilers/1").should route_to("spoilers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spoilers/1/edit").should route_to("spoilers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spoilers").should route_to("spoilers#create")
    end

    it "routes to #update" do
      put("/spoilers/1").should route_to("spoilers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spoilers/1").should route_to("spoilers#destroy", :id => "1")
    end

  end
end
