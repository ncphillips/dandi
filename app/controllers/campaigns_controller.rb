class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show]

  def index
    @campaigns = Campaign.all
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create(params.require(:campaign).permit(:title, :description))

    respond_to do |format|
      format.turbo_stream do
        redirect_to new_campaign_path
      end
      format.html do
        redirect_to campaigns_path
      end
    end
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
