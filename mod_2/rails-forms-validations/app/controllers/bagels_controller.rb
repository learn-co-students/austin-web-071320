class BagelsController < ApplicationController
  def index
    @bagels = Bagel.all
  end

  def new
    @bagel = Bagel.new
  end

  def create
    @bagel = Bagel.new(bagel_params)
    if @bagel.valid?
      @bagel.save
      flash[:notice] = 'Bagel created!'
      redirect_to bagel_path(@bagel)
    else
      # @errors will be availablie in the view
      @errors = @bagel.errors.full_messages
      render 'new'

      # @bagel will be lost after the redirect_to but the error stays in flash 
      flash[:errors] = @bagel.errors.full_messages
      redirect_to new_bagel_path
    end
  end

  private

  def bagel_params
    params.require(:bagel).permit(:name, :price, :blood_type, :flavor)
  end

end
