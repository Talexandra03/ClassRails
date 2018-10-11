class CorreosMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.correos_mailer.notificacion.subject
  #
  def notificacion(tarea) #parametro
    @tarea = tarea

    mail to: "tatianacgrafip@gmail.com",
    subject: "Tarea nueva"
  end
end
