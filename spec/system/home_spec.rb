require 'rails_helper'

RSpec.describe 'Home', type: :system do
  # お決まりの構文
  before do
    driven_by(:rack_test)
  end

  describe 'トップページの検証' do
    it 'Home#topという文字列が表示される' do
      visit '/'
      expect(page).to have_content('Home#top')
    end
  end
end
