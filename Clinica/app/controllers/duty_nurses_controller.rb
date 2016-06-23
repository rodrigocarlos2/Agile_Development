class DutyNursesController < ApplicationController
  before_action :set_duty_nurse, only: [:show, :edit, :update, :destroy]

  # GET /duty_nurses
  # GET /duty_nurses.json
  def index
    @duty_nurses = DutyNurse.all
  end

  # GET /duty_nurses/1
  # GET /duty_nurses/1.json
  def show
  end

  # GET /duty_nurses/new
  def new
    @duty_nurse = DutyNurse.new
  end

  # GET /duty_nurses/1/edit
  def edit
  end

  # POST /duty_nurses
  # POST /duty_nurses.json
  def create
    @duty_nurse = DutyNurse.new(duty_nurse_params)

    respond_to do |format|
      if @duty_nurse.save
        format.html { redirect_to @duty_nurse, notice: 'Duty nurse was successfully created.' }
        format.json { render :show, status: :created, location: @duty_nurse }
      else
        format.html { render :new }
        format.json { render json: @duty_nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /duty_nurses/1
  # PATCH/PUT /duty_nurses/1.json
  def update
    respond_to do |format|
      if @duty_nurse.update(duty_nurse_params)
        format.html { redirect_to @duty_nurse, notice: 'Duty nurse was successfully updated.' }
        format.json { render :show, status: :ok, location: @duty_nurse }
      else
        format.html { render :edit }
        format.json { render json: @duty_nurse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duty_nurses/1
  # DELETE /duty_nurses/1.json
  def destroy
    @duty_nurse.destroy
    respond_to do |format|
      format.html { redirect_to duty_nurses_url, notice: 'Duty nurse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_duty_nurse
      @duty_nurse = DutyNurse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def duty_nurse_params
      params.require(:duty_nurse).permit(:duty_id, :nurse_id)
    end
end
