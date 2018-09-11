module ExportableMethods
  extend ActiveSupport::Concern

  def export_to_excel
    resources = _search.try(:results) || scoped_collection
    resources = order.apply(resources)

    respond_to do |format| 
      filename = "#{current_dashboard.model.model_name.human(count: :many)}.xls"

      format.xls { 
        spreadsheet = Excel::DashboardXlsTemplate.generate_excel(resources, fields_with_type, ExcelExporterDecorator, current_dashboard.model)
        send_data spreadsheet.string, filename: filename, type: "application/vnd.ms-excel"
      }
    end
  end

  private

    def fields_with_type
      final_fields = {}
      current_dashboard::EXCEL_ATTRIBUTES.each do |attr| 
        final_fields.merge!({"#{attr}" => current_dashboard::ATTRIBUTE_TYPES[attr]})
      end
      final_fields
    end

end
