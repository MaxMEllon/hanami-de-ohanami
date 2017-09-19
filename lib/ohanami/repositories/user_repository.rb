# frozen_string_literal: true

class UserRepository < Hanami::Repository
  def find_by_email!(email)
    user = users.where(email: email).first
    raise Ohanami::RecordNotFoundException.new('User not found by email') if user.nil?
    user
  end
end
