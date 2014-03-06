class StaticController < ApplicationController
  def index
  end

  def contact
    @contact = Contact.new
    if request.post?
      @contact.assign_attributes(contact_params)
      if @contact.save
        redirect_to contact_path, notice: "We will be with you soon"
      else
        flash[:alert] = 'oops'
        render :contact
      end
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :question)
  end

end
