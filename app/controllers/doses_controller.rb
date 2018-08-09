class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new
    #@dose = Dose.new(cocktail: @cocktail)
  end

  def create
    @dose = Dose.new(big_param)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail) #@cocktail from line 10. you wanna go back to the cocktail you just created.
    else
      render :new
    end
  end

  def destroy
    # @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail) #@cocktail from line 20.
  end

  private

  def big_param
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

=begin
line 3: here we specify the cocktail. remember, looking at route, this is nested. because its nested you cant go params[:id] you MUST
go params[:cocktail_id] because its a SPECIFIC COCKTAIL'S ID. another way of doing this is line 5.

line 4: again this association is possible thanks to belongs to and has many. doseS bencause a cocktail has many doses. check the
migration

line 20: this is not necessary. why? check router. if you just destroy a dose, the url is not nested inside cocktail.

line 29: think logic. does a dose only need a description? e.g. 50 grams of....what? you need an ingredient right? thats right. put
ingredient id here.
=end
