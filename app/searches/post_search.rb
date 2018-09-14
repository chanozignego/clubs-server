require "searchlight/adapters/action_view"

class PostSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

  def search_title_cont
    opt = options[:title]
    query.where("name ILIKE '%#{opt}%'")
  end

  def search_author_cont
    opt = options[:author_cont]
    query.where("author ILIKE '%#{opt}%'")
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
