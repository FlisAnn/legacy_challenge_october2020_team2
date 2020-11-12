feature 'User can sign up for an account' do
  context 'on sign-up form' do
    before do
      visit root_path
      click_on 'Sign up'
    end

    it 'is expected user to fill in the sign up form' do
      fill_in 'Name', with: 'Nicole'
      fill_in 'Email', with: 'baby@gmail.com'
      fill_in 'Password', with: '87653229'
      fill_in 'Password confirmation', with: '87653229'
      click_on 'Create'
      expect(page).to have_content "Welcome! You have signed up successfully."
    end

    it 'is expected user to fill in the name' do
      fill_in 'Name', with: ''
      click_on 'Create'
      expect(page).to have_content 'Name can\'t be blank'
    end

    it 'is expected user to fill in the email' do
      fill_in 'Email', with: ''
      click_on 'Create'
      expect(page).to have_content 'Email can\'t be blank'
    end

    it 'is expected user to fill in the password' do
      fill_in 'Password', with: ''
      click_on 'Create'
      expect(page).to have_content 'Password can\'t be blank'
    end

    it 'is expected user to fill in the password confirmation' do
      fill_in 'Password confirmation', with: ''
      click_on 'Create'
      expect(page).to have_content 'Password confirmation'
    end

    it 'is expected user to fill in 8 characters minimum password ' do
      click_on 'Create'
      expect(page).to have_content '8 characters minimum'
    end 
  end
end