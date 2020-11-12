feature 'User can sign up for an account' do
  context 'on sign-up form' do
    before do
      visit root_path
      click_on 'Sign up'
    end

    it 'displays the sign-up form' do
      expect(page).to have_content 'Sign up'
      expect(page).to have_field 'Name'
      expect(page).to have_field 'Email'
      expect(page).to have_field 'Password'
      expect(page).to have_field 'Password confirmation'
    end
  end

  context 'when user signs up' do
    before do
      visit root_path
      click_on 'Sign up'
    end

    it 'is expected user to fill in the form' do
      fill_in 'Name', with: 'Nicole'
      fill_in 'Email', with: 'baby@gmail.com'
      fill_in 'Password', with: '87653229'
      fill_in 'user_password_confirmation', with: '87653229'
      click_on 'Create'
      expect(page).to have_content "Welcome! You have signed up successfully."
    end

    it 'alerts an error message if each field is not completed correctly' do
      click_on 'Create'
      expect(page).to have_content 'Name can\'t be blank'
      expect(page).to have_content 'Email can\'t be blank'
      expect(page).to have_content 'Password can\'t be blank'
      expect(page).to have_content 'Password confirmation'
      expect(page).to have_content '8 characters minimum'
    end
  end
end