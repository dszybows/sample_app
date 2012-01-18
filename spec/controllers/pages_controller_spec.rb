require 'spec_helper'

describe PagesController do
  render_views
  
  describe "GET 'home'" do
    # Test presence
    it "should be successful" do
      get 'home'
      response.should be_success
    end
        
    # Test the title    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Dariusz Sample App | Home")
    end
    
  end

  # Test presence
  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    # Test the title    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Dariusz Sample App | Contact")
    end

  end

  # Test presence
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    # Test the title    
    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Dariusz Sample App | About")
    end

  end

end
