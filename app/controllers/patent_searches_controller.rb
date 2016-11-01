class PatentSearchesController < ApplicationController
  before_action :set_patent_search, only: [:show, :edit, :update, :destroy]

  # GET /patent_searches
  # GET /patent_searches.json
  def index
    @patent_searches = PatentSearch.all
  end

  # GET /patent_searches/1
  # GET /patent_searches/1.json
  def show
  end

  # GET /patent_searches/new
  def new
    @patent_search = PatentSearch.new
  end

  # GET /patent_searches/1/edit
  def edit
  end

  # POST /patent_searches
  # POST /patent_searches.json
  def create
    @patent_search = PatentSearch.new(patent_search_params)
    @patent_search.uuid = SecureRandom.uuid

    respond_to do |format|
      if @patent_search.save
        format.html { redirect_to @patent_search }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /patent_searches/1
  # PATCH/PUT /patent_searches/1.json
  def update
    respond_to do |format|
      if @patent_actions.update(patent_search_params)
        format.html { redirect_to @patent_actions, notice: 'Patent search was successfully updated.' }
        format.json { render :show, status: :ok, location: @patent_actions }
      else
        format.html { render :edit }
        format.json { render json: @patent_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patent_searches/1
  # DELETE /patent_searches/1.json
  def destroy
    @patent_actions.destroy
    respond_to do |format|
      format.html { redirect_to patentActions_url, notice: 'Patent search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patent_search
      @patent_search = PatentSearch.find(params[:id])
    end

    # # Never trust parameters from the scary internet, only allow the white list through.
    def patent_search_params
      params.require(:patent_search).permit(:terms, :fields)
    end
end
