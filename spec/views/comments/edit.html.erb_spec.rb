require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :message => "MyText",
      :user => nil,
      :meeting => nil
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "textarea#comment_message[name=?]", "comment[message]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_meeting_id[name=?]", "comment[meeting_id]"
    end
  end
end
