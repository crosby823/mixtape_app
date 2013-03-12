class UserMixtapesController < ApplicationController
  # GET /user_mixtapes
  # GET /user_mixtapes.json
  def index
    @user_mixtapes = UserMixtape.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_mixtapes }
    end
  end

  # GET /user_mixtapes/1
  # GET /user_mixtapes/1.json
  def show
    @user_mixtape = UserMixtape.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_mixtape }
    end
  end

  # GET /user_mixtapes/new
  # GET /user_mixtapes/new.json
  def new
    @user_mixtape = UserMixtape.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_mixtape }
    end
  end

  # GET /user_mixtapes/1/edit
  def edit
    @user_mixtape = UserMixtape.find(params[:id])
  end

  # POST /user_mixtapes
  # POST /user_mixtapes.json
  def create
    @user_mixtape = UserMixtape.new(params[:user_mixtape])

    respond_to do |format|
      if @user_mixtape.save
        format.html { redirect_to @user_mixtape, notice: 'User mixtape was successfully created.' }
        format.json { render json: @user_mixtape, status: :created, location: @user_mixtape }
      else
        format.html { render action: "new" }
        format.json { render json: @user_mixtape.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_mixtapes/1
  # PUT /user_mixtapes/1.json
  def update
    @user_mixtape = UserMixtape.find(params[:id])

    respond_to do |format|
      if @user_mixtape.update_attributes(params[:user_mixtape])
        format.html { redirect_to @user_mixtape, notice: 'User mixtape was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_mixtape.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_mixtapes/1
  # DELETE /user_mixtapes/1.json
  def destroy
    @user_mixtape = UserMixtape.find(params[:id])
    @user_mixtape.destroy

    respond_to do |format|
      format.html { redirect_to user_mixtapes_url }
      format.json { head :no_content }
    end
  end
end
