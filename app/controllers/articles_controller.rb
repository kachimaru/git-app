class sController < ApplicationController
  before_action :set_, only: [:show, :edit, :update, :destroy]

  def index
    @s = .all
  end

  def show
  end

  def new
    @ = .new
  end

  def edit
  end

  def create
    @ = .new(_params)

    respond_to do |format|
      if @.save
        format.html { redirect_to @, notice: ' was successfully created.' }
        format.json { render :show, status: :created, location: @ }
      else
        format.html { render :new }
        format.json { render json: @.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @.update(_params)
        format.html { redirect_to @, notice: ' was successfully updated.' }
        format.json { render :show, status: :ok, location: @ }
      else
        format.html { render :edit }
        format.json { render json: @.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @.destroy
    respond_to do |format|
      format.html { redirect_to s_url, notice: ' was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_
      @ = .find(params[:id])
    end

    def _params
      params.require(:).permit(:title, :author, :text)
    end
end
