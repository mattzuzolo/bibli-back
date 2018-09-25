class Api::V1::BookCollectionsController < ApplicationController
  def employee_project_params
    params.require(:book_collection).permit(:book_id, :collection_id)
  end
end
