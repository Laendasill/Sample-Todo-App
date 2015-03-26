require 'rails_helper'

RSpec.describe TodoController, type: :controller do
  describe "GET index" do
    it "assigns @todos" do
      todo = create(:todo)
      get :index
      expect(assigns(:todos)).to eq([todo])
    end
  end

  describe "GET new" do
    it "renders new form" do
      get :new
      expect(response).to render_template("todo/new")
    end
  end

  describe "POST create" do

    it "Should redirect to index" do

      post 'create', todo: {title: "title", description: "description"}
      expect(flash[:notice]).to_not be_nil
      expect(response).to redirect_to(root_url)

    end
  end
end
