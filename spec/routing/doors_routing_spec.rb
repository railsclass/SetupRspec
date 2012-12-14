require "spec_helper"

describe DoorsController do
  describe "routing" do

    it "routes to #index" do
      get("/doors").should route_to("doors#index")
    end

    it "routes to #new" do
      get("/doors/new").should route_to("doors#new")
    end

    it "routes to #show" do
      get("/doors/1").should route_to("doors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doors/1/edit").should route_to("doors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doors").should route_to("doors#create")
    end

    it "routes to #update" do
      put("/doors/1").should route_to("doors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doors/1").should route_to("doors#destroy", :id => "1")
    end

  end
end
