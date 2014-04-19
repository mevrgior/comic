class ArtobjectsController < ApplicationController
  before_action :set_artobject, only: [:show, :edit, :update, :destroy]

  # GET /artobjects
  # GET /artobjects.json
  def index
    @artobjects = Artobject.all
  end

  # GET /artobjects/1
  # GET /artobjects/1.json
  def show
  end

  # GET /artobjects/new
  def new
    @artobject = Artobject.new
  end

  # GET /artobjects/1/edit
  def edit
  end

  # POST /artobjects
  # POST /artobjects.json
  def create
    @artobject = Artobject.new(artobject_params)

    respond_to do |format|
      if @artobject.save
        format.html { redirect_to @artobject, notice: 'Artobject was successfully created.' }
        format.json { render :show, status: :created, location: @artobject }
      else
        format.html { render :new }
        format.json { render json: @artobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artobjects/1
  # PATCH/PUT /artobjects/1.json
  def update
    respond_to do |format|
      if @artobject.update(artobject_params)
        format.html { redirect_to @artobject, notice: 'Artobject was successfully updated.' }
        format.json { render :show, status: :ok, location: @artobject }
      else
        format.html { render :edit }
        format.json { render json: @artobject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artobjects/1
  # DELETE /artobjects/1.json
  def destroy
    @artobject.destroy
    respond_to do |format|
      format.html { redirect_to artobjects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artobject
      @artobject = Artobject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artobject_params
      params.require(:artobject).permit(:name, :description, :picture, :user_id)
    end
end
