class LearnedMovesController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @learned_move = LearnedMove.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @learned_move = LearnedMove.new(learned_move_params)
    @learned_move.pokemon = @pokemon
    if @learned_move.save
      redirect_to trainer_path(@pokemon.trainer)
    else
      render :new
    end
  end

  private

  def learned_move_params
    params.require(:learned_move).permit(:move_id)
  end
end
