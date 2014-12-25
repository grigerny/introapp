class IntrosController < ApplicationController
  before_action :set_intro, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index]
  
  
  # GET /intros
  # GET /intros.json
  def index
    @intros = Intro.all
  end

  # GET /intros/1
  # GET /intros/1.json
  def show
    @intro = Intro.find(params[:id])
    @user = @intro.user
  end

  # GET /intros/new
  def new
    load_contacts
    @intro = Intro.new
  end

  # GET /intros/1/edit
  def edit
    load_contacts
  end

  # POST /intros
  # POST /intros.json
  def create
    @intro = Intro.new(intro_params)
    @intro.user = current_user

    respond_to do |format|
      if @intro.save
        format.html { redirect_to @intro, notice: 'Intro was successfully created.' }
        format.json { render action: 'show', status: :created, location: @intro }
      else
        format.html { render action: 'new' }
        format.json { render json: @intro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /intros/1
  # PATCH/PUT /intros/1.json
  def update
    respond_to do |format|
      if @intro.update(intro_params)
        format.html { redirect_to @intro, notice: 'Intro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @intro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intros/1
  # DELETE /intros/1.json
  def destroy
    @intro.destroy
    respond_to do |format|
      format.html { redirect_to intros_url }
      format.json { head :no_content }
    end
  end
  
  def send_email
      @intro = Intro.find(params[:id])
      IntroMailer.intro_email(@intro, current_user).deliver
      redirect_to root_url 
      flash[:notice]  = 'Intro was successfully sent.' 
 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intro
      @intro = Intro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def intro_params
      params[:intro]
    end
    
    def load_contacts
      @contact_emails = []
      unless request.env['omnicontacts.contacts'].blank?
        contacts = request.env['omnicontacts.contacts']
        contacts.each{ |con| @contact_emails << con[:email] }
        @contact_emails
      end
    end

end
