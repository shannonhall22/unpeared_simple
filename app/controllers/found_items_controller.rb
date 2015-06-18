class FoundItemsController < ApplicationController
  before_action :set_found_item, only: [:show, :edit, :update, :destroy]
  before_action :current_user_owner, only: [:edit, :update, :destroy]

  def current_user_owner
    @found_items = FoundItem.find(params[:id])
    unless current_user.id == @found_items.user_id
      redirect_to root_url
    end
  end

  # GET /found_items
  # GET /found_items.json
  def index
    @q = FoundItem.ransack(params[:q])
    @found_items = @q.result
  end

  # GET /found_items/1
  # GET /found_items/1.json
  def show
  end

  # GET /found_items/new
  def new
    @found_item = FoundItem.new
  end

  # GET /found_items/1/edit
  def edit
  end

  # POST /found_items
  # POST /found_items.json
  def create
    @found_item = FoundItem.new(found_item_params)

    respond_to do |format|
      if @found_item.save
        format.html { redirect_to @found_item, notice: 'Found item was successfully created.' }
        format.json { render :show, status: :created, location: @found_item }
      else
        format.html { render :new }
        format.json { render json: @found_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /found_items/1
  # PATCH/PUT /found_items/1.json
  def update
    respond_to do |format|
      if @found_item.update(found_item_params)
        format.html { redirect_to @found_item, notice: 'Found item was successfully updated.' }
        format.json { render :show, status: :ok, location: @found_item }
      else
        format.html { render :edit }
        format.json { render json: @found_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /found_items/1
  # DELETE /found_items/1.json
  def destroy
    @found_item.destroy
    respond_to do |format|
      format.html { redirect_to found_items_url, notice: 'Found item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_found_item
      @found_item = FoundItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def found_item_params
      params.require(:found_item).permit(:name, :desc, :category_id, :image1, :image2, :image3, :location, :user_id)
    end
end
