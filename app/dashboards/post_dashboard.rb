require "administrate/base_dashboard"

class PostDashboard < ApplicationDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    title: Field::String,
    state: Field::Enum,
    summary: Field::Text,
    author: Field::String,
    body: Field::RichText,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :title,
    :state,
    :summary,
    :author
  ]

  EXCEL_ATTRIBUTES = COLLECTION_ATTRIBUTES

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :title,
    :state,
    :author,
    :summary,
    :body,
    :created_at,
    :updated_at,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :state,
    :author,
    :summary,
    :body
  ]

  SEARCHABLE_ATTRIBUTES = [
    [:id_eq, {input_html: {type: :number, min: 0}}],
    [:title_cont],
    [:author_cont],
    [:date_gteq, {input_html: {type: :datetime, class: "js-default-datepicker form-control"}}],
    [:date_lteq, {input_html: {type: :datetime, class: "js-default-datepicker form-control"}}],

  ]

  def self.search_path
    Rails.application.routes.url_helpers.admin_posts_path
  end

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
