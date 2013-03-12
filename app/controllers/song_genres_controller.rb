class SongGenresController < ApplicationController
  # GET /song_genres
  # GET /song_genres.json
  def index
    @song_genres = SongGenre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @song_genres }
    end
  end

  # GET /song_genres/1
  # GET /song_genres/1.json
  def show
    @song_genre = SongGenre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @song_genre }
    end
  end

  # GET /song_genres/new
  # GET /song_genres/new.json
  def new
    @song_genre = SongGenre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @song_genre }
    end
  end

  # GET /song_genres/1/edit
  def edit
    @song_genre = SongGenre.find(params[:id])
  end

  # POST /song_genres
  # POST /song_genres.json
  def create
    @song_genre = SongGenre.new(params[:song_genre])

    respond_to do |format|
      if @song_genre.save
        format.html { redirect_to @song_genre, notice: 'Song genre was successfully created.' }
        format.json { render json: @song_genre, status: :created, location: @song_genre }
      else
        format.html { render action: "new" }
        format.json { render json: @song_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /song_genres/1
  # PUT /song_genres/1.json
  def update
    @song_genre = SongGenre.find(params[:id])

    respond_to do |format|
      if @song_genre.update_attributes(params[:song_genre])
        format.html { redirect_to @song_genre, notice: 'Song genre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @song_genre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /song_genres/1
  # DELETE /song_genres/1.json
  def destroy
    @song_genre = SongGenre.find(params[:id])
    @song_genre.destroy

    respond_to do |format|
      format.html { redirect_to song_genres_url }
      format.json { head :no_content }
    end
  end
end
