module Mails
  class WithoutContinuationMail < ApplicationRecord
    include MailTemplateConcern

    belongs_to :procedure

    SLUG = "without_continuation"
    DEFAULT_TEMPLATE_NAME = "notification_mailer/without_continuation_mail"
    DISPLAYED_NAME = 'Accusé de classement sans suite'
    DEFAULT_SUBJECT = 'Votre dossier demarches-simplifiees.fr nº --numéro du dossier-- a été classé sans suite'
    DOSSIER_STATE = Dossier.states.fetch(:sans_suite)
  end
end
