require 'rails_helper'

RSpec.describe "gossips/index", type: :view do
  before(:each) do
    assign(:gossips, [
      Gossip.create!(
        :content => "MyText",
        :user => nil
      ),
      Gossip.create!(
        :content => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of gossips" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
