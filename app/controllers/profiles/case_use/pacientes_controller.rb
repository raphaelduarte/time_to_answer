class Profiles::CaseUse::PacientesController < ApplicationController
  before_action :set_profiles_case_use_paciente, only: %i[ show edit update destroy ]

  # GET /profiles/case_use/pacientes or /profiles/case_use/pacientes.json
  def index
    @profiles_case_use_pacientes = Profiles::CaseUse::Paciente.all
  end

  # GET /profiles/case_use/pacientes/1 or /profiles/case_use/pacientes/1.json
  def show
  end

  # GET /profiles/case_use/pacientes/new
  def new
    @profiles_case_use_paciente = Profiles::CaseUse::Paciente.new
  end

  # GET /profiles/case_use/pacientes/1/edit
  def edit
  end

  # POST /profiles/case_use/pacientes or /profiles/case_use/pacientes.json
  def create
    @profiles_case_use_paciente = Profiles::CaseUse::Paciente.new(profiles_case_use_paciente_params)

    respond_to do |format|
      if @profiles_case_use_paciente.save
        format.html { redirect_to profiles_case_use_paciente_url(@profiles_case_use_paciente), notice: "Paciente was successfully created." }
        format.json { render :show, status: :created, location: @profiles_case_use_paciente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profiles_case_use_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/case_use/pacientes/1 or /profiles/case_use/pacientes/1.json
  def update
    respond_to do |format|
      if @profiles_case_use_paciente.update(profiles_case_use_paciente_params)
        format.html { redirect_to profiles_case_use_paciente_url(@profiles_case_use_paciente), notice: "Paciente was successfully updated." }
        format.json { render :show, status: :ok, location: @profiles_case_use_paciente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profiles_case_use_paciente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/case_use/pacientes/1 or /profiles/case_use/pacientes/1.json
  def destroy
    @profiles_case_use_paciente.destroy!

    respond_to do |format|
      format.html { redirect_to profiles_case_use_pacientes_url, notice: "Paciente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profiles_case_use_paciente
      @profiles_case_use_paciente = Profiles::CaseUse::Paciente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profiles_case_use_paciente_params
      params.fetch(:profiles_case_use_paciente, {})
    end
end
