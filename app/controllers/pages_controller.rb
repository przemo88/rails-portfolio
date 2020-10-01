class PagesController < ApplicationController

  http_basic_authenticate_with name: ENV['LOGIN'], password: ENV['PASSWORD'], except: [:index, :show] 

  def index
    @page = Page.all
    @count = Page.count
  end

  def new
    @page = Page.new
  end

  def show
    @page = Page.find(params[:id])
  end


  def create
    @page = Page.new(page_params)

    if @page.save 
    redirect_to @page
    else
      render 'new'
      end
    end


  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to @page
    else
      render 'edit'
    end
  end

  def delete
    @page = Page.find(params[:id])
  end

  def destroy
    @page = Page.find(params[:id])
    if @page.destroy
    redirect_to @page
    else
      redirect_to 'delete'
  end
    end

  private

  def page_params
    params.require(:page).permit(:name, :description, :github, :website, :image)
  end

end
