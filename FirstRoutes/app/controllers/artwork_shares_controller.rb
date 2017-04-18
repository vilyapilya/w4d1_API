class ArtworkSharesController < ApplicationController
  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end

  def destroy
    artwork_shares = ArtworkShare.find_by(id: params[:id])
    if artwork_shares.delete
      render json: artwork_shares
    else
      render(
        json: artwork_shares.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def create
    artwork_shares = ArtworkShare.new(artwork_share_params)
    if artwork_shares.save
      render json: artwork_shares
    else
      render(
        json: artwork_shares.errors.full_messages, status: :unprocessable_entity
      )
    end
  end



end
