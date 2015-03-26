require 'rails_helper'

RSpec.describe Todo, type: :model do

  it "shold be created" do
    todo = create(:todo)
    expect(Todo.where(id: 1)).to exist
  end

  it "should have title" do
    todo = Todo.create(title: " ", description: "description")
    expect(todo).to_not be_valid
    todov = Todo.create(title: "valid", description: "descr")
    expect(todov).to be_valid
  end

end
