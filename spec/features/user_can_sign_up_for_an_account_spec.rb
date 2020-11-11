feature 'User can sign up for an account' do
  context 'with sign-up form' do
    before do
      visit registration_path
    end

    it 'displays the sign-up form' do
      expect(page).to have_content 'Sign up'
    end
  end
end