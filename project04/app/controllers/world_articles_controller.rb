class WorldArticlesController < ApplicationController
  # GET /world_articles
  # GET /world_articles.json
  def index
    @world_articles = WorldArticle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @world_articles }
    end
  end

  # GET /world_articles/1
  # GET /world_articles/1.json
  def show
    @world_article = WorldArticle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @world_article }
    end
  end

  # GET /world_articles/new
  # GET /world_articles/new.json
  def new
    @world_article = WorldArticle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @world_article }
    end
  end

  # GET /world_articles/1/edit
  def edit
    @world_article = WorldArticle.find(params[:id])
  end

  # POST /world_articles
  # POST /world_articles.json
  def create
    @world_article = WorldArticle.new(params[:world_article])

    respond_to do |format|
      if @world_article.save
        format.html { redirect_to @world_article, notice: 'World article was successfully created.' }
        format.json { render json: @world_article, status: :created, location: @world_article }
      else
        format.html { render action: "new" }
        format.json { render json: @world_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /world_articles/1
  # PUT /world_articles/1.json
  def update
    @world_article = WorldArticle.find(params[:id])

    respond_to do |format|
      if @world_article.update_attributes(params[:world_article])
        format.html { redirect_to @world_article, notice: 'World article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @world_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /world_articles/1
  # DELETE /world_articles/1.json
  def destroy
    @world_article = WorldArticle.find(params[:id])
    @world_article.destroy

    respond_to do |format|
      format.html { redirect_to world_articles_url }
      format.json { head :no_content }
    end
  end
end
