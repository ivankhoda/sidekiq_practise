class TeamsController < ApplicationController
  def index
    teams = Team.all.select(:id, :name, :rating)
    render json: { data: teams }
  end

  def show
    team = Team.where(id: team_params[:id]).select(:id,
                                                   :name,
                                                   :rating)
    BuyTimeWorker.perform_async(team.first.name, team.first.rating)
    render json: { data: team }
  end

  def edit
    p 'edit'
  end

  private

  def team_params
    params.permit(:id)
  end
end
