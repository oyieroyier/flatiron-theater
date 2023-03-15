class ProductionsController < ApplicationController
  wrap_parameters format: []

  # GET all productions
  def index
    render json: Production.all, only: %i[title genre], status: :ok
  end

  # GET a single production
  def show
    production = Production.find_by(id: params[:id])
    if production
      render json: production, except: %i[created_at updated_at], methods: [:title_director], status: :ok
    else
      render json: { error: 'Not Available' }, status: :not_found
    end
  end

  # POST a new production
  def create
    production = Production.create(production_params)
    render json: production
  end

  # DELETE a production
  def destroy
    # Find the entry
    production = Production.find_by(id: params[:id])

    if production
      # Destroy the entry
      production.destroy
      head :no_content
    else
      render json: { error: 'Production not found!' }, status: :not_found
    end
  end

  # PATCH a production
  def update
    # Find the entry
    production = Production.find_by(id: params[:id])

    if production
      # Update the entry
      production.update(production_params)
      render json: production, status: :accepted
    else
      render json: {
               error: 'No such production, check Nollywood!',
             },
             status: :not_found
    end
  end

  private

  def production_params
    params.permit(:title, :genre, :budget, :image, :director, :ongoing)
  end
end
