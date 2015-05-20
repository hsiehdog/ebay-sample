class EbayHelper
  LISTING_WINDOW_IN_DAYS = 60

  class << self
    def get_listings_for_username(username)
      args = {:EndTimeFrom => I18n.localize(Time.zone.now - LISTING_WINDOW_IN_DAYS.days, format: :long),
              :EndTimeTo   => I18n.localize(Time.zone.now + LISTING_WINDOW_IN_DAYS.days, format: :long),
              :UserID      => username
      }
      response = Ebayr.call(:GetSellerList, args)
      if response[:ack] == 'Success'
        response[:item_array] ? response[:item_array][:item] : []
      else
        raise 'Error while retrieving seller list from Ebay'
      end
    end

    def get_listing_for_id(id)
      response = Ebayr.call(:GetItem, {:ItemID => id})
      if response[:ack] == 'Success'
        response[:item]
      else
        raise 'Error while retrieving item from Ebay'
      end
    end
  end
end
