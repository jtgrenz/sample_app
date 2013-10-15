require 'spec_helper'


describe "StaticPages" do

	let(:base_title) {"Ruby on Rails Tutorial Sample App"}	

	describe "Home page" do
    it "should have the content 'Sample App'"do
			visit root_path
			expect(page).to have_content('Sample App')
		end

		it "Should have the base title" do
			visit root_path
			expect(page).to have_title("#{base_title}")
		end

		it "Should NOT have a custom page title" do
			visit root_path
			expect(page).not_to have_title('Home')
		end
  end

	describe "Help page" do
		it "should have the content 'Help'" do	
			visit help_path
			expect(page).to have_content('Help')
		end
		
		it "Should have the right title" do
			visit help_path 
			expect(page).to have_title("#{base_title} | Help")
		end
	end

	describe "About page" do
		it "should have the Content 'About Us'" do
			visit about_path
			expect(page).to have_content('About Us')
		end

		it "Should have the right title" do
			visit about_path
			expect(page).to have_title("#{base_title} | About Us")
		end
	end

	describe "Contact Page" do
		it "should have the content 'Contact'" do
			visit contact_path 
			expect(page).to have_content('Contact')
		end
		
		it "should have the title 'Contact'" do
			visit contact_path 
			expect(page).to have_title("#{base_title} | Contact") 
		end
	end
end
