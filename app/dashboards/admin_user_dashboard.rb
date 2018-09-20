require "administrate/base_dashboard"

class AdminUserDashboard < ApplicationDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    email: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    telephone: Field::Custom,
    encrypted_password: Field::Password,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    sign_in_count: Field::Number,
    current_sign_in_at: Field::DateTime,
    last_sign_in_at: Field::DateTime,
    current_sign_in_ip: Field::String,
    last_sign_in_ip: Field::String,
    roles: Field::Tag,
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
    :email,
    :first_name,
    :last_name,
    :telephone,
    :roles
  ]

  EXCEL_ATTRIBUTES = COLLECTION_ATTRIBUTES

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :email,
    :first_name,
    :last_name,
    :telephone,
    :roles
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :email,
    :first_name,
    :last_name,
    :telephone,
    :roles
  ]

  SEARCHABLE_ATTRIBUTES = [
    [:id_eq, {input_html: {type: :number, min: 0}}],
    [:name_cont],
    [:email_cont],
    [:roles_eq, {as: :select,
                  collection: AdminUser::ROLES,
                  include_blank: true,
                  input_html: { class: "form-control js-select2" },
                  value_method: :last,
                  label_method: -> (ft) {
                      I18n.t("admin_user.roles.#{ft}")
                    }
                  }]

  ]

  def self.search_path
    Rails.application.routes.url_helpers.admin_admin_users_path
  end

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
