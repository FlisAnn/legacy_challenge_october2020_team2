feature 'User can sign up for an account' do
  context 'with sign-up form' do
    before do
      visit root_path
      click_on 'Sign up'
    end

    it 'displays the sign-up form' do
      expect(page).to have_content 'Sign up'
      expect(page).to have_field 'Name'
      expect(page).to have_field 'Email'
      expect(page).to have_text '(8 characters minimum)'
      expect(page).to have_field 'Password'
      expect(page).to have_field 'Password confirmation'
    end

    it 'display Create button' do
      expect(page).to have_button 'Create'
    end

    it 'User should see success message' do
      fill_in 'Name', with: 'user712'
      fill_in 'Email', with: 'user712@test.com'
      fill_in 'Password', with: '12345678'
      fill_in 'Password confirmation', with: '12345678'
      click_on 'Create'
      expect(page).to have_content "Welcome! You have signed up successfully."
    end

    # it 'user enters her name' do 
    #   expect(page) has_field? 'Name', with: 'Jane Fonda'
    # end

  end
end