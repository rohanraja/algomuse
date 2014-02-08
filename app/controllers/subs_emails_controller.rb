class SubsEmailsController < ApplicationController
  before_action :set_subs_email, only: [:show, :edit, :update, :destroy]

  # GET /subs_emails
  # GET /subs_emails.json
  def index
    @subs_emails = SubsEmail.all
  end

  # GET /subs_emails/1
  # GET /subs_emails/1.json
  def show
  end

  # GET /subs_emails/new
  def new
    @subs_email = SubsEmail.new
  end

  # GET /subs_emails/1/edit
  def edit
  end

  # POST /subs_emails
  # POST /subs_emails.json
  def create
    @subs_email = SubsEmail.new(subs_email_params)

    @subs_email.ip = request.remote_ip

    respond_to do |format|
      if @subs_email.save
        format.html { redirect_to @subs_email, notice: 'Subs email was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subs_email }
      else
        format.html { render action: 'new' }
        format.json { render json: @subs_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subs_emails/1
  # PATCH/PUT /subs_emails/1.json
  def update
    respond_to do |format|
      if @subs_email.update(subs_email_params)
        format.html { redirect_to @subs_email, notice: 'Subs email was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subs_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subs_emails/1
  # DELETE /subs_emails/1.json
  def destroy
    @subs_email.destroy
    respond_to do |format|
      format.html { redirect_to subs_emails_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subs_email
      @subs_email = SubsEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subs_email_params
      params.require(:subs_email).permit(:email, :ip)
    end
end
