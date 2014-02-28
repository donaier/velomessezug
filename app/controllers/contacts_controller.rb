class ContactsController < ApplicationController

  def create


    if params[:contact][:name].present? && params[:contact][:email].present? && params[:contact][:message].present?

      mail_subject = "Neue Kontaktaufnahme von #{params[:contact][:name]}"
      mail_content = "#{params[:contact][:name]} (#{params[:contact][:email]}) schreibt:
                      #{params[:contact][:message]}"

      Mail.deliver do
        to      'donat.baier@gmail.com'
        from    'kontaktformular@velomessezug.ch'
        subject mail_subject
        body    mail_content
      end
      redirect_to contacts_thanks_path
    else
      redirect_to contacts_failed_path
    end
  end

  def failed
  end

  def thanks
  end
end
