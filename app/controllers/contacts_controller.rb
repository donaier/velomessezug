class ContactsController < ApplicationController

  def create
    @name = params[:contact][:name]
    @email = params[:contact][:email]
    @message = params[:contact][:message]

    if @name && @email && @message
      Mail.deliver do
        to      'donat.baier@gmail.com'
        from    'kontaktformular@velomessezug.ch'
        subject "Neue Kontaktaufnahme von #{@name}"
        body    "#{@name} (#{@email}) schreibt:

                #{@message}
                "
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
