# frozen_string_literal: true

class UserRepository < Hanami::Repository
  def find_by_email!(email)
    user = users.where(email: email).first
    return user if user
    raise Ohanami::RecordNotFoundException.new('User not found by email')
  end

  def find_by_email(email)
    user = users.where(email: email).first
    return user if user
    false
  end
end
