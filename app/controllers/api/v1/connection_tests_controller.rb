class Api::V1::ConnectionTestsController < ApplicationController
  before_action :set_connection_test, only: %i[ show update destroy ]

  # GET /connection_tests
  def index
    @connection_tests = ConnectionTest.all

    render json: @connection_tests
  end

  # GET /connection_tests/1
  def show
    render json: @connection_test
  end

  # POST /connection_tests
  def create
    @connection_test = ConnectionTest.new(connection_test_params)

    if @connection_test.save
      render json: @connection_test, status: :created, location: api_v1_connection_tests_path(@connection_test)
    else
      render json: @connection_test.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /connection_tests/1
  def update
    if @connection_test.update(connection_test_params)
      render json: @connection_test
    else
      render json: @connection_test.errors, status: :unprocessable_entity
    end
  end

  # DELETE /connection_tests/1
  def destroy
    @connection_test.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection_test
      @connection_test = ConnectionTest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def connection_test_params
      params.require(:connection_test).permit(:title)
    end
end
