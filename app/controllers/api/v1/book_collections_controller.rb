class Api::V1::BookCollectionsController < ApplicationController

  def index
    @book_collections = BookCollection.all
    render json: @book_collections.to_json()
  end

  def create
    @book_collection = BookCollection.create(book_collection_params)
    @book_collection.save if @book_collection.valid?
    render json: @book_collection.to_json()
  end

  def destroy
    find_book_collection.destroy
  end

  private

    def book_collection_params
      params.require(:book_collection).permit(:book_id, :collection_id)
    end

    def find_book_collection
      @book_collection = BookCollection.find(params[:id])
    end
end
