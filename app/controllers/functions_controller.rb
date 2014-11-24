class FunctionsController < ApplicationController
  def index
    @functions = Function.all
  end

  def show
    @function = Function.find(params[:id])
  end

  def new
    @function = Function.new
  end

  def create
    @function = Function.new
    @function.name = params[:name]

    if @function.save
      redirect_to "/functions", :notice => "Function created successfully."
    else
      render 'new'
    end
  end

  def edit
    @function = Function.find(params[:id])
  end

  def update
    @function = Function.find(params[:id])

    @function.name = params[:name]

    if @function.save
      redirect_to "/functions", :notice => "Function updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @function = Function.find(params[:id])

    @function.destroy

    redirect_to "/functions", :notice => "Function deleted."
  end
end
