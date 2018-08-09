class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(epic_param)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail) #from line 15. to see the cocktail that we created.
    else
      render :new
    end
  end

  def destroy
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path #goes back to the index. simple.
  end

  private

  def epic_param
    params.require(:cocktail).permit(:name)
  end

end

=begin
im writing as im doing this from scratch. follow rails routes. makes it a ton easier so you know where to go/look.
line 24: is wrong because if you look at router, it doesnt have to be nested.
=end
