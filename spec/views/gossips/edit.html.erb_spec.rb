require 'rails_helper'

RSpec.describe "gossips/edit", type: :view do
  before(:each) do
    @gossip = assign(:gossip, Gossip.create!(
      :content => "MyText",
      :user => nil
    ))
  end

  it "renders the edit gossip form" do
    render

    assert_select "form[action=?][method=?]", gossip_path(@gossip), "post" do

      assert_select "textarea[name=?]", "gossip[content]"

      assert_select "input[name=?]", "gossip[user_id]"
    end
  end
end
