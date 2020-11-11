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
      expect(page).to have_field 'Password'
      expect(page).to have_field 'Password confirmation'
    end

    it 'display Create button' do
      expect(page).to have_button 'Create'
    end

  end
end