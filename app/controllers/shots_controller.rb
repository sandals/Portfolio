class ShotsController < ApplicationController
  def index
    @shots = Shot.all
  end

  def new
    @shot = Shot.new
  end

  def create
    @shot = Shot.new(shot_params)

    if @shot.save
      redirect_to root_url
    else
      flash.now[:error] = 'Could not create shot for some reason. Check the form
      for any errors'

      render action: 'new'
    end
  end

  private

  def shot_params
    params.require(:shot).permit(:title, :image)
  end
end
