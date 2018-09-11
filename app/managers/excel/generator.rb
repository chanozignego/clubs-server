class Excel::Generator

  def self.generate(template_class, param1, param2, param3, param4)
    book = template_class.new(param1, param2, param3, param4).book
    spreadsheet = StringIO.new
    book.write spreadsheet
    spreadsheet
  end
end