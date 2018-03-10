module Todos
  class FinishesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_todo, only: [:create, :destroy]
    
    # POST /todos/finish/1
    def create
      @todo.done!
      redirect_to root_path
    end

    # DELETE /todos/finish/1
    def destroy
      @todo.undone!
      redirect_to root_path
    end
    
    private

    def set_todo
      @todo = Todo.find(params[:todo_id])
    end
  end
end
  