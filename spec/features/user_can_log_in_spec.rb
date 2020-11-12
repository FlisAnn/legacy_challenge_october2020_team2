feature 'User can log in' do
  context 'on log in form' do
    before do
      visit user_session_path
      click_on 'Log in'
    end
  
    it 'displays the log in form' do
    expect(page).to have_content 'Log in'
    expect(page).to have_field 'Email'
    expect(page).to have_field 'Password'
    end

    it 'display options for sign up and forget password' do
      expect(page).to have_link 'Sign up', href: '/users/sign_up'
      expect(page).to have_link 'Forgot your password?', href: '/users/password/new'
    end

    it 'displays error message if no/wrong information completed' do
      expect(page).to have_content 'Invalid Email or password'
    end
  end
end