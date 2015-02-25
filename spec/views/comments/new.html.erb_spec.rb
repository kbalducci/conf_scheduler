require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :message => "MyText",
      :user => nil,
      :meeting => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "textarea#comment_message[name=?]", "comment[message]"

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_meeting_id[name=?]", "comment[meeting_id]"
    end
  end
end