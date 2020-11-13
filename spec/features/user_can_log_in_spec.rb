feature 'User can log in' do
  let(:user) { FactoryBot.create(:user) }

  context 'successful log in' do
    before do
      visit user_session_path
      click_on 'Login'  
    end

    it 'user can log in successfully' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully'
    end
  end

  context 'unsuccessful log in' do
    before do
      visit user_session_path
      click_on 'Login'  
    end
    
    it 'displays error message if email is invalid' do
      fill_in 'Email', with: ' '
      fill_in 'Password', with: user.password
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password'
    end

    it 'displays error message if password is incorrect' do
      fill_in 'Email', with: user.name
      fill_in 'Password', with: ' '
      click_button 'Log in'
      expect(page).to have_content 'Invalid Email or password'
    end
  end
end
