class CampaignsController < ApplicationController
  before_action :set_campaign, only: [:show, :destroy]

  def index
    @campaigns = Campaign.all.order(created_at: :desc)
  end

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create!(params.require(:campaign).permit(:title, :description))

    respond_to do |format|
      format.turbo_stream { redirect_to new_campaign_path }
      format.html { redirect_to campaigns_path }
    end
  end

  def show
  end

  def destroy
    @campaign.destroy!

    respond_to do |format|
      format.html { redirect_to campaigns_path }
    end
  end

  private

  def set_campaign
    @campaign = Campaign.find_by!(id: params[:id])
  end

  def campaign_params
    params.require(:campaign).permit(:title, :description)
  end
end
