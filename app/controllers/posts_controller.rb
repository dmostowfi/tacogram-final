class PostsController < ApplicationController

  def index
    @posts = Post.all
    respond_to do |format| #this is now capable of rendering both html and json
        format.html
        format.json do #if its json, show the post index as json format
          render :json => @posts
        end
      end
  end

  def new
    @post = Post.new
  end

  def create
    if @current_user
      @post = Post.new
      @post["body"] = params["post"]["body"]
      @post.uploaded_image.attach(params["post"]["uploaded_image"])
      @post["user_id"] = @current_user["id"]
      @post.save
    else
      flash["notice"] = "Login first."
    end
    redirect_to "/posts"
  end

  # before_action :allow_cors
  # def allow_cors
  #   response.headers['Access-Control-Allow-Origin'] = '*'
  #   response.headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
  #   response.headers['Access-Control-Allow-Headers'] = 'Origin, Content-Type, Accept, Authorization, Token, Auth-Token, Email, X-User-Token, X-User-Email'
  #   response.headers['Access-Control-Max-Age'] = '1728000'
  # end

end