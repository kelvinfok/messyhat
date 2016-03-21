class SkillsetsController < ApplicationController
  before_action :set_skillset, only: [:show, :edit, :update, :destroy]

  def index
    @skillset = Skillet.all
  end

  def show
    @profile = Profile.all
    @skillset = Skillset.find(params[:id])
  end

  def create
    @skillset = Skillset.new(skillset_params)

    respond_to do |format|
      if @skillset.save
        format.html { redirect_to new_skillset_path, notice: '#{skillset_params} was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def new
    @skillset = Skillset.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skillset
      @skillset = Skillset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skillset_params
      params.require(:skillset).permit(:name)
    end

end
