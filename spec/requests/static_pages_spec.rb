require 'spec_helper'

describe "Static pages" do

  describe "First page" do

    it "should have the h1 'ap'" do
      visit '/static_pages/first'
      page.should have_selector('h1', :text => 'ap')
    end

    it "should have the base title" do
      visit '/static_pages/first'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial ap")
    end

    it "should not have a custom page title" do
      visit '/static_pages/first'
      page.should_not have_selector('title', :text => '| First')
    end
  end
  .
  .
  .
end