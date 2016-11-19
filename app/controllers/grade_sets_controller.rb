class GradeSetsController < ApplicationController
  before_action :set_grade_set, only: [:show, :edit, :update, :destroy]

  # GET /grade_sets
  # GET /grade_sets.json
  def index
    @grade_sets = GradeSet.all
  end

  # GET /grade_sets/1
  # GET /grade_sets/1.json
  def show
  end

  # GET /grade_sets/new
  def new
    @grade_set = GradeSet.new
    @students = Student.all
  end

  # GET /grade_sets/1/edit
  def edit
    @students = Student.all
  end

  # POST /grade_sets
  # POST /grade_sets.json
  def create
    @grade_set = GradeSet.new(grade_set_params)

    respond_to do |format|
      if @grade_set.save
        format.html { redirect_to @grade_set, notice: 'Grade set was successfully created.' }
        format.json { render :show, status: :created, location: @grade_set }
      else
        format.html { render :new }
        format.json { render json: @grade_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grade_sets/1
  # PATCH/PUT /grade_sets/1.json
  def update
    respond_to do |format|
      if @grade_set.update(grade_set_params)
        format.html { redirect_to @grade_set, notice: 'Grade set was successfully updated.' }
        format.json { render :show, status: :ok, location: @grade_set }
      else
        format.html { render :edit }
        format.json { render json: @grade_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grade_sets/1
  # DELETE /grade_sets/1.json
  def destroy
    @grade_set.destroy
    respond_to do |format|
      format.html { redirect_to grade_sets_url, notice: 'Grade set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_grade_set
      @grade_set = GradeSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grade_set_params
      params.require(:grade_set).permit(:year, :grade1, :grade2, :grade3, :grade4, :student_id)
    end
end
