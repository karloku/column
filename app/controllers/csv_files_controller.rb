# frozen_string_literal: true
class CSVFilesController < ApplicationController
  before_action :set_csv_file, only: [:show, :destroy]

  api :GET, '/csv_files/:id'
  param :id, Integer, required: true
  def show
    render json: @csv_file
  end

  api :POST, '/csv_files'
  param :file, ::ActionDispatch::Http::UploadedFile, required: true
  def create
    @csv_file = CSVFile.new
    @csv_file.csv = params[:file]
    @csv_file.save!

    ProcessCSVJob.perform_later(@csv_file.id)

    render json: @csv_file, status: :created, location: @csv_file
  end

  def destroy
    @csv_file
  end

  private

  def set_csv_file
    @csv_file = CSVFile.find(params[:id])
  end
end
