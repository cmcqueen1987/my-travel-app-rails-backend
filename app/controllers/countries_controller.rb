class CountriesController < ProtectedController
  before_action :set_country, only: [:update, :destroy]

  # GET /countries
  def index
    @countries = current_user.countries

    render json: @countries
  end

  # GET /countries/1
  def show
    render json: @country
  end

  # POST /countries
  def create

    @country = Country.new(country_params)
    # @country = current_user.countries.build(country_params)
    @country.user = current_user

    if @country.save
      render json: @country, status: :created
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /countries/1
  def update
    if @country.update(country_params)
      render json: @country
    else
      render json: @country.errors, status: :unprocessable_entity
    end
  end

  # DELETE /countries/1
  def destroy
    @country.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_country
    @country = current_user.countries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def country_params
    params.require(:country).permit(:name, :continent, :capital_city)
  end
end
