class MessagesController < ApplicationController
  def index
    @messages = Message.where(campaign_id: params[:campaign_id])
  end

  def new
    @message = Message.new(campaign_id: params[:campaign_id])
  end

  def create
    @message = Message.create!(message_params)
    respond_to do |format|
      format.turbo_stream { redirect_to new_campaign_message_path(@message.campaign) }
      format.html { redirect_to campaign_path(@message.campaign) }
    end
  end

  def show
    @message = Message.find_by!(id: params[:id], campaign_id: params[:campaign_id])
  end

  private

  def message_params
    params.require(:message).permit(:content, :campaign_id)
  end
end
