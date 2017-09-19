class UserRepository < Hanami::Repository
  def find_by_email!(email)
    user = users.where(email: email).first
    raise 'User not found' if user.nil?
    user
  end
end
