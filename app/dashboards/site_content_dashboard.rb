require "administrate/base_dashboard"

class SiteContentDashboard < ApplicationDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    name: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    tag: Field::String,
    content_type: Field::Enum,
    file: Field::File,
    text: Field::Text,
    description: Field::RichText,

  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :tag,
    :name,
    :content_type,
    :file,
    :text,
    :description,
  ]

  EXCEL_ATTRIBUTES = COLLECTION_ATTRIBUTES

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :tag,
    :name,
    :content_type,
    :file,
    :text,
    :description,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :tag,
    :name,
    :content_type,
    :file,
    :text,
    :description,
  ]

  SEARCHABLE_ATTRIBUTES = [
    [:id_eq, {input_html: {type: :number, min: 0}}],
    [:name_cont],
    [:tag_cont],
    [:content_type_eq, {as: :select,
                     collection: SiteContent.content_types,
                     include_blank: true,
                     input_html: { class: "form-control js-select2" },
                     value_method: :last,
                     label_method: -> (ft) {
                         I18n.t("site_content.content_types.#{ft.first}")
                       }
                     }]




  ]

  def self.search_path
    Rails.application.routes.url_helpers.admin_site_contents_path
  end

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
