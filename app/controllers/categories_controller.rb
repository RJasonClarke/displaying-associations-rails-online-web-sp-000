class CategoriesController < ApplicationController
  before_action :set_categories, only: %i[ show edit update posts ]
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(params[:category])
    redirect_to category_path(@category)
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category.update(params.require(:category))
    redirect_to category_path(@category)
  end

  private

  def set_categories
    @category = Category.find(params[:id])
  end
end
