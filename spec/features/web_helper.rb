def create_user_and_post_peeps
  user = User.create(name: 'example', email: 'example',
    username:'example', password: 'example')
  Peep.create(maker: 'Example1', body: 'first', user_id:  user.id)
  Peep.create(maker: 'Example2', body: 'second', user_id: user.id)
end

def sign_up
  visit('/signup')
  fill_in('name', with: 'Oleg Gru')
  fill_in('username', with: 'Olegfkl')
  fill_in('email', with: 'example@example.com')
  fill_in('password', with: 'password123')
  fill_in('password_confirmation', with: 'password123')
  click_button 'Submit'
end
