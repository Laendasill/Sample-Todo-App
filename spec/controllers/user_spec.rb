require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET new" do
    it "shoud render new form" do
      get :new
      expect(response).to render_template("users/new")
    end
  end

  describe "POST create" do
    it "render flash on unsuccesful subbmision" do
      post :create, user: {name: "name", email: "", password: "ppppppppp"}
      expect(flash[:error]).to_not be_nil
    end

    it "ok's when params are valid" do
      post :create, user: {name: "name", email: "eml@eml.com", password: "ppppppppp"}
      expect(response.status).to eq(200)
    end
    it "does not ok's when params are not valid" do
      post :create, user: {name: "name", email: "", password: "ppppppppp"}
      expect(response.status).to_not eq(200)
    end
  end

end
