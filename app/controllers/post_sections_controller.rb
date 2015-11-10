class PostSectionsController < ApplicationController
  before_action :set_post_section, only: [:show, :edit, :update, :destroy]

  

  # GET /post_sections
  # GET /post_sections.json
  def index
    @post_sections = PostSection.all
  end

  # GET /post_sections/1
  # GET /post_sections/1.json
  def show
  end

  # GET /post_sections/new
  def new
    @post_section = PostSection.new
  end

  # GET /post_sections/1/edit
  def edit
  end

  # POST /post_sections
  # POST /post_sections.json
  def create
    @post_section = PostSection.new(post_section_params)

    respond_to do |format|
      if @post_section.save
        format.html { redirect_to @post_section, notice: 'Post section was successfully created.' }
        format.json { render :show, status: :created, location: @post_section }
      else
        format.html { render :new }
        format.json { render json: @post_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_sections/1
  # PATCH/PUT /post_sections/1.json
  def update
    session[:return_to] ||= request.referer
    respond_to do |format|
      if @post_section.update(post_section_params)
        @post_id = @post_section.post_id.to_s
        #@post_id = PostSection.find(params[:id]).post_id.to_s
        #format.html { redirect_to @post_section, notice: 'Post section was successfully updated.' }
        format.html { redirect_to posts_path+'/'+@post_id+'/edit/', notice: 'Post section was successfully updated.' }
        #format.html { redirect_to session.delete(:return_to), notice: 'Post section was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_section }
      else
        format.html { render :edit }
        format.json { render json: @post_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_sections/1
  # DELETE /post_sections/1.json
  def destroy
    session[:return_to] ||= request.referer
    @post_section.destroy
    respond_to do |format|
     # format.html { redirect_to post_sections_url, notice: 'Post section was successfully destroyed.' }
      format.html { redirect_to session.delete(:return_to), notice: 'Post section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def sort
    params[:order].each do |key,value|
      PostSection.find(value[:id]).update_attribute(:priority,value[:position])
    end
    render :nothing => true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_section
      @post_section = PostSection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_section_params
      params[:post_section].permit(:title, :icon, :summary, :additional_text, :post_id, :priority)
    end
end
