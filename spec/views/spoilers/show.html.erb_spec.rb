require 'spec_helper'

describe "spoilers/show" do
  before(:each) do
    @spoiler = assign(:spoiler, stub_model(Spoiler,
      :film_title => "Film Title",
      :spoiler => "MyText",
      :vote => 1.5,
      :vote_counter => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Film Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1.5/)
    rendered.should match(/1/)
  end
end
