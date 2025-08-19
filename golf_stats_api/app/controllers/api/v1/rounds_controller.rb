class Api::V1::RoundsController < ApplicationController
  def index
    rounds = Round.all
    render json: rounds
  end

  def show
    round = Round.find(params[:id])
    render json: round
  end

  def create
    round = Round.new(round_params)
    if round.save
      render json: round, status: :created
    else
      render json: round.errors, status: :unprocessable_entity
    end
  end

  def update
    round = Round.find(params[:id])
    if round.update(round_params)
      render json: round
    else
      render json: round.errors, status: :unprocessable_entity
    end
  end

  def destroy
    round = Round.find(params[:id])
    round.destroy
    head :no_content
  end

private

def round_params
  params.require(:round).permit(:course_id, :date_played, :total_score, :player_name)
end
end