require "searchlight/adapters/action_view"

class SiteContentSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

def search_tag_cont
    opt = options[:tag_cont]
    query.where("tag ILIKE '%#{opt}%'")
  end
  
def content_type_cont
    opt = options[:content_type_cont]
    query.where("content_type ILIKE '%#{opt}%'")
  end


end
