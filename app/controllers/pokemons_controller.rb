class PokemonsController < ApplicationController
  def create
    @trainer = Trainer.find(params[:trainer_id])
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.trainer = @trainer
    if @pokemon.save
      redirect_to trainer_path(@trainer)
    else
      render 'trainers/show'
    end
  end

  def destroy
    @pokemon = Pokemon.find(params[:id])
    @trainer = @pokemon.trainer
    @pokemon.destroy
    redirect_to trainer_path(@trainer)
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url)
  end

end
