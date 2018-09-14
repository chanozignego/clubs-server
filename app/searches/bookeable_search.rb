require "searchlight/adapters/action_view"

class BookeableSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

  def search_name_cont
    opt = options[:name]
    query.where("name ILIKE '%#{opt}%'")
  end



end
