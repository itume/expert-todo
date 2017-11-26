require 'rails_helper'

RSpec.describe "todos/new", type: :view do
  before(:each) do
    assign(:todo, Todo.new(
      :user => nil,
      :title => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new todo form" do
    render

    assert_select "form[action=?][method=?]", todos_path, "post" do

      assert_select "input[name=?]", "todo[user_id]"

      assert_select "input[name=?]", "todo[title]"

      assert_select "input[name=?]", "todo[description]"
    end
  end
end
