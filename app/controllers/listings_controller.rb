class ListingsController < ApplicationController
  def new
  end

  def search
    @username = params[:username]
    @listings = EbayHelper.get_listings_for_username(@username)
  end

  def show
    @item = EbayHelper.get_listing_for_id(params[:id])
  end
end

