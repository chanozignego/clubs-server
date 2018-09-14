require "searchlight/adapters/action_view"

class ReservationSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView



  def search_user_cont
    opt = options[:user_cont]
    query.joins(:user).where("users.name ILIKE '%#{opt}%'")
  end

  def search_date_gteq
    date = date_gteq.is_a?(String) ? Date.strptime(date_gteq, I18n.t("date.formats.calendar")) : date_gteq.to_date
    query.where(query.arel_table[:date].gteq(date.to_time.beginning_of_day))
  end

  def search_date_lteq
    date = date_lteq.is_a?(String) ? Date.strptime(date_lteq, I18n.t("date.formats.calendar")) : date_lteq.to_date
    query.where(query.arel_table[:date].lteq(date.end_of_day))
  end








end
