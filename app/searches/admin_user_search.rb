require "searchlight/adapters/action_view"

class AdminUserSearch < Searchlight::Search
  include Searchable::Base
  include Searchlight::Adapters::ActionView

  def search_name_cont
    opt = options[:name_cont]
    query.where("first_name ILIKE '%#{opt}%' OR last_name ILIKE '%#{opt}%'")
  end

  def search_roles
    opt = options[:roles_cont]
    query.where("roles ILIKE '%#{opt}%'")
  end



end
