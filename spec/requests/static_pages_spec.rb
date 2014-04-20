require 'spec_helper'

describe "Static pages" do


  describe "Home page" do

  	it "should have the right title 'Home' " do
  		visit 'static_pages/home'
  		expect(page).to have_title ('Home')
  	end

    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content ('Sample App')

    end
  end

  describe "Help page" do

  

    it "should have the content 'Help page'" do
    	visit '/static_pages/help'
    	expect(page).to have_content ('Help page')

    end

  end


  describe "About us" do



    it "should have the content 'About us'" do
    	visit '/static_pages/about'
    	expect(page).to have_content ('About us')

    end
  end



end
