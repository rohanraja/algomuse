class RequestTextsController < ApplicationController
  before_action :set_request_text, only: [:show, :edit, :update, :destroy]

  # GET /request_texts
  # GET /request_texts.json
  def index
    @request_texts = RequestText.all
  end

  # GET /request_texts/1
  # GET /request_texts/1.json
  def show
  end

  # GET /request_texts/new
  def new
    @request_text = RequestText.new
  end

  # GET /request_texts/1/edit
  def edit
  end

  # POST /request_texts
  # POST /request_texts.json
  def create
    @request_text = RequestText.new(request_text_params)
    
    @request_text.ip = request.remote_ip

    respond_to do |format|
      if @request_text.save
        format.html { redirect_to @request_text, notice: 'Request text was successfully created.' }
        format.json { render action: 'show', status: :created, location: @request_text }
      else
        format.html { render action: 'new' }
        format.json { render json: @request_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_texts/1
  # PATCH/PUT /request_texts/1.json
  def update
    respond_to do |format|
      if @request_text.update(request_text_params)
        format.html { redirect_to @request_text, notice: 'Request text was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @request_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_texts/1
  # DELETE /request_texts/1.json
  def destroy
    @request_text.destroy
    respond_to do |format|
      format.html { redirect_to request_texts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_text
      @request_text = RequestText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_text_params
      params.require(:request_text).permit(:name, :email, :website, :body, :ip)
    end
end
