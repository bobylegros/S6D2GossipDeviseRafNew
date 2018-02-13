require 'rails_helper'

RSpec.describe "gossips/new", type: :view do
  before(:each) do
    assign(:gossip, Gossip.new(
      :content => "MyText",
      :user => nil
    ))
  end

  it "renders new gossip form" do
    render

    assert_select "form[action=?][method=?]", gossips_path, "post" do

      assert_select "textarea[name=?]", "gossip[content]"

      assert_select "input[name=?]", "gossip[user_id]"
    end
  end
end
