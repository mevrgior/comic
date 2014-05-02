require 'spec_helper'

describe "Static pages" do

	let(:base_title) {" Comic Dreams "}

  describe "Home page" do

  	it "should have the right title base " do
  		visit root_path
  		expect(page).to have_title ("#{base_title}")
  	end

    it "should have the content 'Sample App'" do
    	visit root_path
    	expect(page).to have_content ('Sample App')

    end
  end

  describe "Help page" do

  

    it "should have the content 'Help page'" do
    	visit help_path
    	expect(page).to have_content ('Help page')

    end

  end


  describe "About us" do



    it "should have the content 'About us'" do
    	visit about_path
    	expect(page).to have_content ('About us')

    end
  end

  describe "Contact page" do

  

    it "should have the content 'Contact page'" do
    	visit contact_path
    	expect(page).to have_content ('Contact us')

    end

  end



end
