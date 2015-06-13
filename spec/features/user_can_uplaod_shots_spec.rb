require 'rails_helper'

feature 'User can upload shots' do
  scenario 'With title and image' do
    user =  User.create(
      email: 'newtonpdx@gmail.com',
      password: 'password123'
    )

    visit root_url

    login_as(user, scope: :user)

    click_link 'New Shot'

    fill_in 'Title', with: 'Blog Wireframe'
    attach_file 'Image', Rails.root.join('spec', 'support', 'files', 'image.jpg')
    click_button 'Post Shot'

    expect(page).to have_content('Blog Wireframe')
    expect(page).to have_css('img.shot__image')
  end
end
