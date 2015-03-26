class TodoController < ApplicationController

  def index
    @todos = Todo.all

  end

  def new
   @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      flash[:notice] = "Todo created Okayfully"
      redirect_to root_url
    else
      
      render "new"
    end
  end

  def delete

  end

private
  def todo_params
    params.require(:todo).permit(:title, :description)
  end
end
