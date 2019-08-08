class EmailsController < ApplicationController
  before_action :load_email, only: %w[show edit update destroy]

  def index
    @emails = Email.all
    render locals: { emails: @emails }
  end

  def new
    @email = Email.new
    render locals: { email: @email }
  end

  def create
    @email = Email.new
    if @email.save(email_params)
      redirect_to({ action: :index }, notice: 'Email was successfully created.')
    else
      render :new, locals: { email: @email }
    end
  end

  def show
  end

  def edit
    render :form
  end

  def update
    @email = Email.find(params[:id])
    if @email.save
      redirect_to({ action: :index }, notice: 'Email was successfully updated.')
    else
      render :index
    end
  end

  # def destroy
  #   @email = Email.find(params[:id])
  #   @email.destroy
  #   redirect_to({ action: :index }, notice: 'Email was successfully destroyed')
  # end

  private

  def load_email
    @email = Email.find(params[:id])
  end

  def email_params
    params.require(:emails).permit(:subject, :body)
  end
end
