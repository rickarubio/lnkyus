require 'spec_helper'

describe 'Homepage' do
  context 'guest user visits the homepage' do
    it 'should display the site title' do
      visit root_path
      expect(page).to have_css("#site-title")
    end

    it 'should have an input box to enter a url' do
      visit root_path
      expect(page).to have_css("#long-url")
    end
  end
end
