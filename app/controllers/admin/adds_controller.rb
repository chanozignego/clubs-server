module Admin
  class AddsController < Admin::ApplicationController
    skip_before_filter :remove_blank_role, :only => [:show, :update, :create]

    def show
      @adds = Adds.instance
    end

    def edit
      @adds = Adds.instance
    end

    def update
      @adds = Adds.instance
      if @adds.update_attributes(adds_params)
        redirect_to admin_adds_edit_path, notice: I18n.t("backoffice.views.adds_updated")
      else
        render :edit
      end
    end

    private

    def adds_params
      params[:adds].
        permit(:logo)
    end


  end
end
