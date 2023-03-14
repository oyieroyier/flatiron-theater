class ProductionsController < ApplicationController
  wrap_parameters format: []
  def index
    render json: Production.all, status: :ok
  end

  def show
    production = Production.find_by(id: params[:id])
    if production
      render json: production, status: :ok
    else
      render json: { error: 'Not Available' }, status: :not_found
    end
  end

  def create
    production = Production.create(production_params)
    render json: production
  end

  def update
    # Find the entry
    production = Production.find_by(id: params[:id])

    if production
      # Update the entry
      production.update(production_params)
      render json: production, status: :accepted
    else
      render json: {
               error: 'No such production, check Nollywood!'
             },
             status: :not_found
    end
  end

  private

  def production_params
    params.permit(:title, :genre, :budget, :image, :director, :ongoing)
  end
end
