class RentalsController < ApplicationController
  before_action :set_rental, only: [:show, :update, :destroy]

  # GET /rentals
  def index
    @rentals = Rental.all

    render json: @rentals, adapter: :json_api
  end

  # GET /rentals/1
  def show
    render json: @rental, serializer: RentalSerializer, adapter: :json_api
  end

  # POST /rentals
  def create
    @rental = Rental.new(rental_params)

    if @rental.save
      render json: @rental, status: :created, location: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rentals/1
  def update
    if @rental.update(rental_params)
      render json: @rental
    else
      render json: @rental.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rentals/1
  def destroy
    @rental.destroy
  end

  private
    def set_rental
      @rental = Rental.find(params[:id])
    end

    def rental_params
      # require(:rental) # We should have this
      # params.require(:data).permit(:data, :type, :title, :owner, :city, :category, :bedrooms, :image, :description)

      p params

      ActiveModelSerializers::Deserialization.jsonapi_parse!(params)
    end
end
