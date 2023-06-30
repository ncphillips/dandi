class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show]

  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    Campaign.create(params.require(:campaign).permit(:title, :description))

    redirect_to campaigns_path
  end

  def show

  end

  private

  def set_campaign
    @campaign = Campaign.find_by(id: params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:title, :description)
  end
end
