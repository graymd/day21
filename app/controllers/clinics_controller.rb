class ClinicsController < ApplicationController
  def index

    @clinics = if !params[:q].blank?
      Clinic.where("name LIKE ? OR st_address LIKE ? OR city LIKE ? OR state LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%", "%#{params[:q]}%")

    else
    @clinics = Clinic.all

    end
  end

  def show
    @clinic = Clinic.find params[:id]
    @patients = @clinic.patients
    @doctor = Doctor.new
    # @doctors = @clinic.doctors
    @doctors = if !params[:q2].blank?
      @clinic.doctors.where("doctor_name LIKE ?", "%#{params[:q2]}%")
    else
      @clinic.doctors
    end
  end
  
  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.create my_params
    redirect_to clinics_path
  end

  def edit
    @clinic = Clinic.find params[:id]
  end

  def update
    @clinic = Clinic.find params[:id]
    @clinic.update my_params
    redirect_to clinic_path(@clinic)
  end

  def destroy
    @clinic = Clinic.find params[:id]
    @clinic.destroy
    redirect_to clinics_path
  end

  def create_doctor
    @clinic = Clinic.find params[:id]
    @doctor = @clinic.doctors.create doctor_params
    redirect_to clinic_path(@clinic)
  end

  def destroy_doctor
    # @clinic = Clinic.find params[:id]
    @doctor = Doctor.find params[:id]
    @doctor.destroy
    redirect_to @doctor.doctorable
  end

private
  def my_params
    params.require(:clinic).permit(
      :name,
      :st_address,
      :city,
      :state
    )
  end

  def set_clinic
    @clinic = Clinic.find params[:id]
  end

  def doctor_params
    params.require(:doctor).permit(
      :doctor_name
      )
  end

end














