class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]

  def search
    @terms = params[:q].lstrip.rstrip.downcase.gsub(/[^0-9a-z-]/, '')
    @result = Domain.where(word: @terms).first

    if @result.blank?
      @result = Domain.new(word: @terms)
    end

    respond_to do |format|
      format.html { render }
      format.js { render 'welcome/search' }
    end

  end

  def suggest
    @terms = params[:q].lstrip.rstrip.downcase.gsub(/[^0-9a-z-]/, '')
    a = []
    File.open('all_zones.txt') do |f|
      f.lines.each do |line|
        a << line
      end
    end
    @results = a.sample(10)
    puts @results
    respond_to do |format|
      format.html { render }
      format.js { render 'welcome/suggest' }
    end
  end

  def whois
    @terms = params[:q].lstrip.rstrip
    @results = Whois.whois(@terms)

    respond_to do |format|
      format.html { render }
      format.js { render 'welcome/whois' }
    end

  end

  # GET /searches
  # GET /searches.json
  def index
    @searches = Search.all
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
  end

  # GET /searches/new
  def new
    @search = Search.new
  end

  # GET /searches/1/edit
  def edit
  end

  # POST /searches
  # POST /searches.json
  def create
    @search = Search.new(search_params)

    respond_to do |format|
      if @search.save
        format.html { redirect_to @search, notice: 'Search was successfully created.' }
        format.json { render action: 'show', status: :created, location: @search }
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /searches/1
  # PATCH/PUT /searches/1.json
  def update
    respond_to do |format|
      if @search.update(search_params)
        format.html { redirect_to @search, notice: 'Search was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /searches/1
  # DELETE /searches/1.json
  def destroy
    @search.destroy
    respond_to do |format|
      format.html { redirect_to searches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_search
      @search = Search.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def search_params
      params.require(:search).permit(:term)
    end
end
