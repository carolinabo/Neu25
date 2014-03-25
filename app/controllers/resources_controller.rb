class ResourcesController < ApplicationController
  before_filter :signed_in_user
  before_filter :admin_user,     only: :new_project

  def new
    @resource = Resource.new
  end


  def index
    @resources = Resource.all
    respond_to do |format|
      format.html # index.html.erb
      format.json {render json: @resources}
    end
  end

  def update
    @resource = Resource.find(params[:id])

    if @resource.update_attributes(params[:resource])
      flash[:success] = "Update successful!"
      redirect_to (resources_path)
    else
      render 'edit'
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    flash[:success] = "Resource destroyed."
    redirect_to resources_path
  end

  def create
    @resource = Resource.new (params[:resource])
    if @resource.save
      flash[:success] = "Resource saved!"
      redirect_to resources_path
    else
      render 'new'
    end
  end

  def new_project
    if File.exists?("Outputfile.txt")
      File.delete("Outputfile.txt")
    end
    system "rake db:reset_data"
    flash[:success] = "Data destroyed!"
    redirect_to resources_path
  end

  private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Bitte melden Sie sich an."
    end
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
