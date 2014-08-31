require "spec_helper"

describe FavorsController do
  describe "routing" do

    it "routes to #index" do
      get("/favors").should route_to("favors#index")
    end

    it "routes to #new" do
      get("/favors/new").should route_to("favors#new")
    end

    it "routes to #show" do
      get("/favors/1").should route_to("favors#show", :id => "1")
    end

    it "routes to #edit" do
      get("/favors/1/edit").should route_to("favors#edit", :id => "1")
    end

    it "routes to #create" do
      post("/favors").should route_to("favors#create")
    end

    it "routes to #update" do
      put("/favors/1").should route_to("favors#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/favors/1").should route_to("favors#destroy", :id => "1")
    end

  end
end
