require 'spec_helper'

describe "Users Page" do

    it "should have the content 'Welcome'" do
      visit 'Login'
      expect(page).to have_content('Welcome')
    end
  end

