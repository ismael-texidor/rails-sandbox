class SandboxesController < ApplicationController
  before_action :set_sandbox, only: [:show, :edit, :update, :destroy]


  def index
    @sandboxes = Sandbox.all
  end


  def show
  end

  def new
    @sandbox = Sandbox.new
  end

  def edit
  end

  def create
    @sandbox = Sandbox.new(sandbox_params)

    respond_to do |format|
      if @sandbox.save
        format.html { redirect_to @sandbox, notice: 'Sandbox was successfully created.' }
        format.json { render :show, status: :created, location: @sandbox }
      else
        format.html { render :new }
        format.json { render json: @sandbox.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sandbox.update(sandbox_params)
        format.html { redirect_to @sandbox, notice: 'Sandbox was successfully updated.' }
        format.json { render :show, status: :ok, location: @sandbox }
      else
        format.html { render :edit }
        format.json { render json: @sandbox.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @sandbox.destroy
    respond_to do |format|
      format.html { redirect_to sandboxes_url, notice: 'Sandbox was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sandbox
      @sandbox = Sandbox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sandbox_params
      params.require(:sandbox).permit(:sand_grains, :box_name)
    end
end
