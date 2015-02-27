class ContactsController < ApplicationController
  def new 
    @contact = Contact.new
  end 
  
  def create
    @contact = Contact.new(contact_params)
  
    if @contact.save 
      name= params[:contact] [:name]
      email= params[:contact] [:email]
      comments= params[:contact] [:comments]
      
      ContactMailer.contact_email(name, email,body).deliver
      flash[:success] = "Message Sent."
      redirect_to new_contact_path, notice: "Message sent succesfully."
    else
      flash[:danger] = "Error occured message not sent"
      redirect_to new_contact_path, notice:"Error Ocurred."
    end
  end

  private 
    def contact_params
      params.require(:contact).permit(:name, :email, :comments) 
    end
end