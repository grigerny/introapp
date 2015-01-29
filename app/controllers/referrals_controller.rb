class ReferralsController < ApplicationController
  before_action :set_referral, only: [:show, :edit, :update, :destroy]

  # GET /referrals
  # GET /referrals.json
  def index
    @referrals = Referral.all
  end

  # GET /referrals/1
  # GET /referrals/1.json
  def show
    @mycontact = Mycontact.find(params[:mycontact_id])
    @referral = @mycontact.referrals.find(params[:id])
  end

  # GET /referrals/new
  def new
    @referral = Referral.new
  end

  # GET /referrals/1/edit
  def edit
    @mycontact = Mycontact.find(params[:mycontact_id])
    @referral = @mycontact.referrals.find(params[:id])
  end

  # POST /referrals
  # POST /referrals.json
  def create
    @user = current_user
    @mycontact = Mycontact.find(params[:mycontact_id])
    @referral = @mycontact.referrals.create!(params[:referral])

    n = Mycontact.new
    @referral.user_id = current_user
    n.name = @referral.name
    n.referredby_name = @mycontact.name
    n.user_id = @user.id
    n.save
    
    respond_to do |format|
          format.html { redirect_to mycontacts_url }
          format.js
    end
  end

  # PATCH/PUT /referrals/1
  # PATCH/PUT /referrals/1.json
  def update
    respond_to do |format|
      if @referral.update(referral_params)
        format.html { redirect_to mycontacts_url, notice: 'Referral was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @referral.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /referrals/1
  # DELETE /referrals/1.json
  def destroy
    @mycontact = Mycontact.find(params[:mycontact_id])
    @referral = @mycontact.referrals.find(params[:id]).destroy
    respond_to do |format|
      format.js 
    end
  end

      
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referral
      @referral = Referral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referral_params
      params[:referral]
    end
end
