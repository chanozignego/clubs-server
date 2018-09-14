require "searchlight/adapters/action_view"

class AuthorizedSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

  def search_dni_cont
    opt = options[:dni_cont]
    query.where("dni ILIKE '%#{opt}%'")
  end

  def search_user_cont
    opt = options[:user_cont]
    query.joins(:user).where("users.name ILIKE '%#{opt}%'")
  end

  def search_date_in_gteq
    date = date_in_gteq.is_a?(String) ? Date.strptime(date_in_gteq, I18n.t("date.formats.calendar")) : date_in_gteq.to_date
    query.where(query.arel_table[:date_in].gteq(date.to_time.beginning_of_day))
  end

  def search_date_in_lteq
    date = date_in_lteq.is_a?(String) ? Date.strptime(date_in_lteq, I18n.t("date.formats.calendar")) : date_in_lteq.to_date
    query.where(query.arel_table[:date_in].lteq(date.end_of_day))
  end

  def search_date_out_gteq
    date = date_out_gteq.is_a?(String) ? Date.strptime(date_out_gteq, I18n.t("date.formats.calendar")) : date_out_gteq.to_date
    query.where(query.arel_table[:date_out].gteq(date.to_time.beginning_of_day))
  end

  def search_date_out_lteq
    date = date_out_lteq.is_a?(String) ? Date.strptime(date_out_lteq, I18n.t("date.formats.calendar")) : date_out_lteq.to_date
    query.where(query.arel_table[:date_out].lteq(date.end_of_day))
  end







end
