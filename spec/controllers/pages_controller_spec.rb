require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    #
    @base_title = "Dariusz Sample App |"
    #
  end
  
  describe "GET 'home'" do
    # Test presence
    it "should be successful" do
      get 'home'
      response.should be_success
    end
        
    # Test the title    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => @base_title + " Home")
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
      response.should have_selector("title", :content => @base_title + " Contact")
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
      response.should have_selector("title", :content => @base_title + " About")
    end

  end
  
  # Test presence
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    # Test the title    
    it "should have the right title" do
      get 'help'
      response.should have_selector("title", :content => @base_title + " Help")
    end

  end
  
  
  
  
  
end
