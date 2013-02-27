require 'spec_helper'

describe "spoilers/new" do
  before(:each) do
    assign(:spoiler, stub_model(Spoiler,
      :film_title => "MyString",
      :spoiler => "MyText",
      :vote => 1.5,
      :vote_counter => 1
    ).as_new_record)
  end

  it "renders new spoiler form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", spoilers_path, "post" do
      assert_select "input#spoiler_film_title[name=?]", "spoiler[film_title]"
      assert_select "textarea#spoiler_spoiler[name=?]", "spoiler[spoiler]"
      assert_select "input#spoiler_vote[name=?]", "spoiler[vote]"
      assert_select "input#spoiler_vote_counter[name=?]", "spoiler[vote_counter]"
    end
  end
end
