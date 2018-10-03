module LoginConcern
  extend ActiveSupport::Concern

  def login_from_the_verification_mail
    mail = ActionMailer::Base.deliveries.last
    message = mail.body.parts.join(&:to_s)
    login_token = message[/connexion-par-jeton\/(.*)/, 1]

    visit sign_in_by_link_path(login_token)
  end
end
