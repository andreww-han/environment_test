# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'J.K Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K Rowling')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Price', with: '19.99'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('19.99')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    select '1999', from: 'book[published_date(1i)]'
    select 'November', from: 'book[published_date(2i)]'
    select '9', from: 'book[published_date(3i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('1999-11-09')
  end
end
