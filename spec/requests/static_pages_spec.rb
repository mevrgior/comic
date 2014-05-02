require 'spec_helper'

describe "Static pages" do

	

  subject { page }

  describe "Home page" do
    before {visit root_path}

    it { should have_title (full_title(''))}

    it { should have_content ('Sample App')}

  end



  describe "Help page" do

   before {visit help_path}

    it { should have_content ('Help page')}

  end



  describe "About us" do

    before {visit about_path}

    it { should have_content ('About us')}

  end


  describe "Contact page" do

    before {visit contact_path}  

    it { should have_content ('Contact us')}

  end



end
