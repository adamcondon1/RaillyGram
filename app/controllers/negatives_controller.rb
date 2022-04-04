class NegativesController < ApplicationController
  before_action :set_negative, only: %i[ show edit update destroy ]

  # GET /negatives or /negatives.json
  def index
    @negatives = Negative.all
  end

  # GET /negatives/1 or /negatives/1.json
  def show
  end

  # GET /negatives/new
  def new
    @negative = Negative.new
  end

def isnegative
 @input1 = params[:search_string]
 @result = Checknegative.runcheck(@input1.to_i)
 end


  # GET /negatives/1/edit
  def edit
  end

  # POST /negatives or /negatives.json
  def create
    @negative = Negative.new(negative_params)

    respond_to do |format|
      if @negative.save
        format.html { redirect_to negative_url(@negative), notice: "Negative was successfully created." }
        format.json { render :show, status: :created, location: @negative }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negatives/1 or /negatives/1.json
  def update
    respond_to do |format|
      if @negative.update(negative_params)
        format.html { redirect_to negative_url(@negative), notice: "Negative was successfully updated." }
        format.json { render :show, status: :ok, location: @negative }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @negative.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negatives/1 or /negatives/1.json
  def destroy
    @negative.destroy

    respond_to do |format|
      format.html { redirect_to negatives_url, notice: "Negative was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negative
      @negative = Negative.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negative_params
      params.require(:negative).permit(:negativenum)
    end
end
