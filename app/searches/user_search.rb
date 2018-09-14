require "searchlight/adapters/action_view"

class UserSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

  def search_dni_cont
    opt = options[:dni_cont]
    query.where("dni ILIKE '%#{opt}%'")
  end

  def search_date_in_eq
    opt = options[:date_in_eq]
    query.where("date_in ILIKE '%#{opt}%'")
  end


end
