# frozen_string_literal: true

class UserRepository < Hanami::Repository
  def find_by_email!(email)
    find_by_email_base(email, true)
  rescue
    $!
  end

  def find_by_email(email)
    find_by_email_base(email)
  end

  private

  def find_by_email_base(email, force = false)
    user = users.where(email: email).first
    return user if user
    raise Ohanami::RecordNotFoundException.new('User not found by email') if force
    false
  end
end
