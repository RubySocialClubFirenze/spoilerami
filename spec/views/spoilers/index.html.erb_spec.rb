require 'spec_helper'

describe "spoilers/index" do
  before(:each) do
    assign(:spoilers, [
      stub_model(Spoiler,
        :film_title => "Film Title",
        :spoiler => "MyText",
        :vote => 1.5,
        :vote_counter => 1
      ),
      stub_model(Spoiler,
        :film_title => "Film Title",
        :spoiler => "MyText",
        :vote => 1.5,
        :vote_counter => 1
      )
    ])
  end

  it "renders a list of spoilers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Film Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
