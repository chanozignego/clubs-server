class Excel::DashboardXlsTemplate < Excel::XlsTemplate

  def initialize(collection, fields, decorator, model_class)
    super(collection)
    bold = Spreadsheet::Format.new :weight => :bold
    @book = Spreadsheet::Workbook.new
    sheet1 = @book.create_worksheet :name => 'Resumen'

    # Get header names
    column = 0
    row = 0
    fields.each do |field, type|
      sheet1.column(column).width = 20
      sheet1.row(row).set_format(column, bold)
      sheet1[row, column] = model_class.human_attribute_name(field)
      column += 1
    end

    row += 1

    collection.each do |resource|
      model = decorator.new(resource) 
      
      column = 0
      fields.each do |field, type|
        type_name = get_type_name(type)
        sheet1[row, column] = model.send("to_#{type_name}", field, resource.send(field))
        column += 1
      end

      row += 1
    end

    @book
  end

  def book
    @book
  end

  def root_class
    DashboardXlsTemplate
  end

  def self.default_filename
    "Dashboard.xls"
  end

  def get_type_name type
    type.present? ? type.to_s.split("::").last.underscore : "string"
  end

end
