class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  def matches
    skillwanted_id = Profile.find_by_user_id(current_user.id).looking_for
    @skillwanted_name = Skillset.find_by_id(skillwanted_id).name
    @result = Profile.search_name(skillwanted_id)
  end


  def search
    if find_id(params[:my_skill]) != false
    skillset_id = find_id(params[:my_skill])
    @results = Profile.search_name(skillset_id)
  else
    flash[:error] = "No Results Found"
    redirect_to :back
  end
end

  def index
    @profiles = Profile.all
  end

  def show
  end


  def new
    @profile = Profile.new
    @skillset = Skillset.all
    @involement = Involvement.all
  end

  def edit
    @skillset = Skillset.all
  end


  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :date_of_birth, :country, :looking_for, :my_skill, :summary, :image)
    end


    def user_params
      params.require(:user).permit(:first_name)
    end

    def find_id name
      return Skillset.find_by_name(name).id
  end



end
