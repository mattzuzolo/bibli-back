class Api::V1::CollectionsController < ApplicationController

  def index
    @collections = Collection.all
    render json: @collections.to_json()
  end

  def new
    @collection = Collection.new
  end

  def show
    @collection = Collection.find(params[:id])
    render json: @collection.tojson()
  end

  def create
    @collection = Collection.create(collection_params)
  end

  def update
    @collection.update(collection_params)
    if @collection.save
      render json: @collection, status: accepted
    else
      render json: { errors: @collection.errors.full_message }, status: :unprocessible_entity
    end
  end

  private

    def collection_params
      params.permit(:name, :user_id)
    end

    def find_collection
      @collection = Collection.find(params[:id])
    end

end
