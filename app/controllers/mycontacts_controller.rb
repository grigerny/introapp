class MycontactsController < ApplicationController
  before_action :set_mycontact, only: [:show, :edit, :update, :destroy]


  # GET /mycontacts
  # GET /mycontacts.json
  def index
    @q = Mycontact.where(:user_id => current_user.id).ransack(params[:q])
    @mycontacts = @q.result(distinct: true)
  end

  # GET /mycontacts/1
  # GET /mycontacts/1.json
  def show
  end

  # GET /mycontacts/new
  def new
    @mycontact = Mycontact.new
  end

  # GET /mycontacts/1/edit
  def edit
  end

  # POST /mycontacts
  # POST /mycontacts.json
  def create
    @mycontact = Mycontact.new(mycontact_params)
    @mycontact.user_id = current_user.id

    respond_to do |format|
      if @mycontact.save
        format.html { redirect_to mycontacts_url, notice: 'Mycontact was successfully created.' }
        format.json { render action: 'new', status: :created, location: @mycontact}
      else
        format.html { render action: 'new' }
        format.json { render json: @mycontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycontacts/1
  # PATCH/PUT /mycontacts/1.json
  def update
    respond_to do |format|
      if @mycontact.update(mycontact_params)
        format.html { redirect_to @mycontact, notice: 'Mycontact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @mycontact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycontacts/1
  # DELETE /mycontacts/1.json
  def destroy
    @mycontact.destroy
    respond_to do |format|
      format.html { redirect_to mycontacts_url }
      format.json { head :no_content }
    end
  end
  
  def save_referral
     @mycontact = Mycontact.find(params[:mycontact_id])
     r = Referral.find(params[:format])
     n = Mycontact.new
     n.name = r.name
     n.referredby_name = @mycontact.name
     n.save
     redirect_to mycontacts_url
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycontact
      @mycontact = Mycontact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mycontact_params
      params[:mycontact]
    end
end
