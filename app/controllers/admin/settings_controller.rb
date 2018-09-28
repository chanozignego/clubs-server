module Admin
  class SettingsController < Admin::ApplicationController
    skip_before_filter :remove_blank_role, :only => [:show, :update, :create]

    def show
      @settings = Settings.instance
    end

    def edit
      @settings = Settings.instance
    end

    def update
      @settings = Settings.instance
      if @settings.update_attributes(settings_params)
        redirect_to admin_settings_edit_path, notice: I18n.t("backoffice.views.settings_updated")
      else
        render :edit
      end
    end

    private

    def settings_params
      params[:settings].
        permit(:primary_color, :secondary_color, :typography, :twitter_user, :facebook_user, :instagram_user, :youtube_user)
    end

  
  end
end
