class UsersBackoffice::Pacientes::WelcomesController < ApplicationController
  before_action :set_users_backoffice_pacientes_welcome, only: %i[ show edit update destroy ]

  # GET /users_backoffice/pacientes/welcomes or /users_backoffice/pacientes/welcomes.json
  def index
    @users_backoffice_pacientes_welcomes = UsersBackoffice::Pacientes::Welcome.all
  end

  # GET /users_backoffice/pacientes/welcomes/1 or /users_backoffice/pacientes/welcomes/1.json
  def show
  end

  # GET /users_backoffice/pacientes/welcomes/new
  def new
    @users_backoffice_pacientes_welcome = UsersBackoffice::Pacientes::Welcome.new
  end

  # GET /users_backoffice/pacientes/welcomes/1/edit
  def edit
  end

  # POST /users_backoffice/pacientes/welcomes or /users_backoffice/pacientes/welcomes.json
  def create
    @users_backoffice_pacientes_welcome = UsersBackoffice::Pacientes::Welcome.new(users_backoffice_pacientes_welcome_params)

    respond_to do |format|
      if @users_backoffice_pacientes_welcome.save
        format.html { redirect_to users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome), notice: "Welcome was successfully created." }
        format.json { render :show, status: :created, location: @users_backoffice_pacientes_welcome }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @users_backoffice_pacientes_welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_backoffice/pacientes/welcomes/1 or /users_backoffice/pacientes/welcomes/1.json
  def update
    respond_to do |format|
      if @users_backoffice_pacientes_welcome.update(users_backoffice_pacientes_welcome_params)
        format.html { redirect_to users_backoffice_pacientes_welcome_url(@users_backoffice_pacientes_welcome), notice: "Welcome was successfully updated." }
        format.json { render :show, status: :ok, location: @users_backoffice_pacientes_welcome }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @users_backoffice_pacientes_welcome.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_backoffice/pacientes/welcomes/1 or /users_backoffice/pacientes/welcomes/1.json
  def destroy
    @users_backoffice_pacientes_welcome.destroy!

    respond_to do |format|
      format.html { redirect_to users_backoffice_pacientes_welcomes_url, notice: "Welcome was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_backoffice_pacientes_welcome
      @users_backoffice_pacientes_welcome = UsersBackoffice::Pacientes::Welcome.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def users_backoffice_pacientes_welcome_params
      params.require(:users_backoffice_pacientes_welcome).permit(:index)
    end
end
