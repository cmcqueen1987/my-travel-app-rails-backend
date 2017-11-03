class CountriesController < ProtectedController
  before_action :set_country, only: [:update, :destroy]
  # GET /countries
  def index
    @countries = current_user.countries
    render json: @countries
  end
  # GET /countries/1
  def show
    @countries = Country.find(params[:id])
        render json: @country
  end
  # POST /countries
  def create

    @country = current_user.countries.build(country_params)
    if @country.save
      render json: @country, status: :created, location: @country
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

  def destroy
    @country.destroy
  end
  private
    def set_country
       @country = current_user.countries.find(params[:id])
    end
    def country_params
      params.require(:country).permit(:name, :user_id)
    end
end
