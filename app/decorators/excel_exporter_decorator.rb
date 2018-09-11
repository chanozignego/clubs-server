class ExcelExporterDecorator < Draper::Decorator
  
  def initialize(object, options = {})
    super
  end

  def to_belongs_to field, data
    data.to_s
  end

  def to_belongs_to_ext field, data
    data.to_s
  end

  def to_boolean field, data
    data ? I18n.t("administrate.fields.boolean.true_value") : I18n.t("administrate.fields.boolean.false_value")
  end

  def to_custom field, data
    data.to_s
  end

  def to_date field, data
    ( data.is_a?(Date) || data.is_a?(DateTime) || data.is_a?(ActiveSupport::TimeWithZone)) ? data.strftime("%d/%m/%Y") : data.to_s
  end

  def to_date_time field, data
    ( data.is_a?(Date) || data.is_a?(DateTime) || data.is_a?(ActiveSupport::TimeWithZone)) ? data.strftime("%d/%m/%Y %H:%Mhs") : "#{data.to_s}hs"
  end

  def to_string_date field, data
    ( data.is_a?(Date) || data.is_a?(DateTime) || data.is_a?(ActiveSupport::TimeWithZone)) ? data.strftime("%d/%m/%Y") : data.to_s
  end

  def to_string_date_time field, data
    ( data.is_a?(Date) || data.is_a?(DateTime) || data.is_a?(ActiveSupport::TimeWithZone)) ? data.strftime("%d/%m/%Y %H:%Mhs") : "#{data.to_s}hs"
  end

  def to_email field, data
    data.to_s
  end

  def to_enum field, data
    I18n.t("#{downcase_model_name}.#{field.to_s.pluralize}.#{data}")
  end

  def to_file field, data
    data.to_s
  end

  def to_has_many field, data
    data.to_s
  end

  def to_has_one field, data
    data.to_s
  end

  def to_image field, data
    data.to_s
  end

  def to_number field, data
    data
  end

  def to_password field, data
    data.to_s
  end

  def to_polymlrphic field, data
    data.to_s
  end

  def to_string field, data
    data.to_s
  end

  def to_tag field, data
    tag = ""
    data.each do |res|
      translation = I18n.t("#{downcase_model_name}.#{field.to_s.pluralize}.#{res.to_s}")
      tag = "#{tag}#{translation}, "
    end
    tag
  end

  def to_text field, data
    data.to_s
  end

  private

    def current_model_name
      object.class.try(:to_s)
    end

    def downcase_model_name
      current_model_name.to_s.underscore
    end

end