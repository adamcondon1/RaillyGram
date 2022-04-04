class FamesController < ApplicationController
  before_action :set_fame, only: %i[ show edit update destroy ]

  # GET /fames or /fames.json
  def index
    @fames = Fame.all
  end

   def isfame
 @input1 = params[:search_string]
 @result = Checkfame.runcheck(@input1.to_i)
 end


  # GET /fames/1 or /fames/1.json
  def show
  end

  # GET /fames/new
  def new
    @fame = Fame.new
  end

  # GET /fames/1/edit
  def edit
  end

  # POST /fames or /fames.json
  def create
    @fame = Fame.new(fame_params)

    respond_to do |format|
      if @fame.save
        format.html { redirect_to fame_url(@fame), notice: "Fame was successfully created." }
        format.json { render :show, status: :created, location: @fame }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fames/1 or /fames/1.json
  def update
    respond_to do |format|
      if @fame.update(fame_params)
        format.html { redirect_to fame_url(@fame), notice: "Fame was successfully updated." }
        format.json { render :show, status: :ok, location: @fame }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fames/1 or /fames/1.json
  def destroy
    @fame.destroy

    respond_to do |format|
      format.html { redirect_to fames_url, notice: "Fame was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fame
      @fame = Fame.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fame_params
      params.require(:fame).permit(:famenum)
    end
end
