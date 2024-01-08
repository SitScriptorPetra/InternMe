class HelpGroupsController < ApplicationController
  before_action :set_help_group, only: %i[ show edit update destroy ]

  # GET /help_groups or /help_groups.json
  def index
    @help_groups = HelpGroup.all
  end

  # GET /help_groups/1 or /help_groups/1.json
  def show
  end

  # GET /help_groups/new
  def new
    @help_group = HelpGroup.new
  end

  # GET /help_groups/1/edit
  def edit
  end

  # POST /help_groups or /help_groups.json
  def create
    @help_group = HelpGroup.new(help_group_params)

    respond_to do |format|
      if @help_group.save
        format.html { redirect_to help_group_url(@help_group), notice: "Help group was successfully created." }
        format.json { render :show, status: :created, location: @help_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @help_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_groups/1 or /help_groups/1.json
  def update
    respond_to do |format|
      if @help_group.update(help_group_params)
        format.html { redirect_to help_group_url(@help_group), notice: "Help group was successfully updated." }
        format.json { render :show, status: :ok, location: @help_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @help_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_groups/1 or /help_groups/1.json
  def destroy
    @help_group.destroy!

    respond_to do |format|
      format.html { redirect_to help_groups_url, notice: "Help group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_group
      @help_group = HelpGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def help_group_params
      params.require(:help_group).permit(:topic)
    end
end
