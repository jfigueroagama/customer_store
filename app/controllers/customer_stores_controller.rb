# Hacer un CRUD de tiendas
# Guardar    El nombre de la tienda, direccion y telefonos de la tienda
# Guardar la informacion de los Clientes direccion y telefonos
# Debera de tener una seccion de busqueda de tiendas
# Pruebas unitarias
class CustomerStoresController < ApplicationController
  before_action :set_customer_store, only: [:show, :edit, :update, :destroy]

  # GET /customer_stores
  # GET /customer_stores.json
  def index
    @customer_stores = CustomerStore.all
  end

  # GET /customer_stores/1
  # GET /customer_stores/1.json
  def show
  end

  # GET /customer_stores/new
  def new
    @customer_store = CustomerStore.new
  end

  # GET /customer_stores/1/edit
  def edit
  end

  # POST /customer_stores
  # POST /customer_stores.json
  def create
    @customer_store = CustomerStore.new(customer_store_params)

    respond_to do |format|
      if @customer_store.save
        format.html { redirect_to @customer_store, notice: 'Customer store was successfully created.' }
        format.json { render :show, status: :created, location: @customer_store }
      else
        format.html { render :new }
        format.json { render json: @customer_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_stores/1
  # PATCH/PUT /customer_stores/1.json
  def update
    respond_to do |format|
      if @customer_store.update(customer_store_params)
        format.html { redirect_to @customer_store, notice: 'Customer store was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_store }
      else
        format.html { render :edit }
        format.json { render json: @customer_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_stores/1
  # DELETE /customer_stores/1.json
  def destroy
    @customer_store.destroy
    respond_to do |format|
      format.html { redirect_to customer_stores_url, notice: 'Customer store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_store
      @customer_store = CustomerStore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_store_params
      params.require(:customer_store).permit(:name)
    end
end
