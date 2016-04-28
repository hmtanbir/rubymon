class MonstersController < ApplicationController
  before_action :set_monster, only: [:show, :edit, :update, :destroy]
  before_action :logged_in_user

  layout 'adminLayout'

  # GET /monsters
  def index
    @monsters = Monster.all
  end

  # GET /monsters/1
  def show
  end

  # GET /monsters/new
  def new
    @monster = Monster.new
  end

  # GET /monsters/1/edit
  def edit
  end

  # POST /monsters
  def create
    @monster = Monster.new(monster_params)

    if @monster.save
      redirect_to @monster, notice: 'Monster was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /monsters/1
  def update
    if @monster.update(monster_params)
      redirect_to @monster, notice: 'Monster was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /monsters/1
  def destroy
    @monster.destroy
    redirect_to monsters_url, notice: 'Monster was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monster
      @monster = Monster.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def monster_params
      params.require(:monster).permit(:name, :type_id, :team_id, :user_id)
    end
end
