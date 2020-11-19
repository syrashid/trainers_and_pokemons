class LearnedMovesController < ApplicationController
  def new
    @pokemon = Pokemon.find(params[:pokemon_id])
    @learned_move = LearnedMove.new
  end

  def create
    @pokemon = Pokemon.find(params[:pokemon_id])
    @moves = Move.where(id: params[:learned_move][:move_id])
    @moves.each do |move|
      @learned_move = LearnedMove.new(move: move)
      @learned_move.pokemon = @pokemon
      @learned_move.save
    end

    redirect_to trainer_path(@pokemon.trainer)
  end

  private

  def learned_move_params
    params.require(:learned_move).permit(:move_id)
  end
end
