# frozen_string_literal: true
class DataJoinsController < ApplicationController
  before_action :set_datasets, only: [:create]

  def create
    @data_joins =
      Rails.cache.fetch("joins/#{@dataset.id}-#{@compare.id}") do
        Dataset.join_dataset(@dataset, @compare, join_attribute: dataset_params[:join_attribute],
                                                 compare_join_attribute: compare_params[:join_attribute],
                                                 attribute: dataset_params[:attribute],
                                                 compare_attribute: compare_params[:attribute])
      end

    render json: DataJoin.wrap(*@data_joins)
  end

  private

  def dataset_params
    params.fetch(:dataset, {}).permit(:id, :join_attribute, :attribute)
  end

  def compare_params
    params.fetch(:compare, {}).permit(:id, :join_attribute, :attribute)
  end

  def set_datasets
    @dataset = Dataset.find(dataset_params[:id])
    @compare = Dataset.find(compare_params[:id])
  end
end