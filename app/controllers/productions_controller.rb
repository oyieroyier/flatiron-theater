class ProductionsController < ApplicationController
  # wrap_parameters format: []
  # protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, with: :not_found_response
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

  # GET all productions
  def index
    render json: Production.all, except: %i[created_at updated_at], status: :ok
  end

  # GET a single production

  def show
    production = find_production

    render json: production,
           except: %i[created_at updated_at],
           methods: [:title_director],
           status: :ok
  end

  # POST a new production
  def create
    production = Production.create!(production_params)
    render json: production
  end

  # DELETE a production
  def destroy
    # Find the entry
    production = find_production
    # Destroy the entry
    production.destroy
    head :no_content
  end

  # PATCH a production
  def update
    # Find the entry
    production = find_production

    # Update the entry
    production.update(production_params)
    render json: production, status: :accepted
  end

  private

  def production_params
    params.permit(:title, :genre, :budget, :image, :director, :ongoing)
  end

  def find_production
    Production.find(params[:id])
  end

  def render_unprocessable_entity(invalid)
    render json: { error: invalid.record.errors }, status: :unprocessable_entity
  end

  def not_found_response
    render json: { error: 'No such production, msee!' }, status: :not_found
  end
end
