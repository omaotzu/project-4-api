class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!

  # GET /posts
  def index
    if params.key?(:stop_id)
      @posts = Post.where(stop_id: params[:stop_id])
    else
      @posts = Post.all
    end

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(Uploader.upload(post_params))
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  def upvote
    @post = Post.find(params[:id])

    if @post.upvote_by current_user
      render json: @post
    elsif
      render json: 'Upvote Failed'
    end
    # redirect_to :back

  end

  def downvote
    @post = Post.find(params[:id])

    if @post.downvote_by current_user
      render json: @post
    elsif
      render json: 'Downvote Failed'
    end
    # redirect_to :back

  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :body, :stop_id, :user_id, :value_for_money, :night_life, :culture, :hospitality)
    end
end
