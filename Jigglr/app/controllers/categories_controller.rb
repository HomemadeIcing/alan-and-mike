class CategoriesController < ApplicationController
def index
  end

  def new
    @category = Category.new
  end 

def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @category.update(category_params)
      redirect_to @category
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path
  end

  private

  def find_category
    @category = category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(
      :name,
    )
  end
end
