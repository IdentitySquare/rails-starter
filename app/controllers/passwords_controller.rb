class PasswordsController < Devise::PasswordsController
  def update
    super do |resource|
      # Auto confirm user's email if they did not confirm after signup and are trying
      # to login again and they reset their password.
      # Only confirm the initial email. Not email pending change.
      if resource.errors.empty? && !resource.confirmed? && resource.unconfirmed_email.nil?
        resource.confirm
      end
    end
  end
end
