class Excel::XlsTemplate
  def initialize(param1 = nil, param2 = nil , param3 = nil, param4 = nil)
    @param1 = param1
    @param2 = param2
    @param3 = param3
    @param4 = param4
  end

  def default_filename
    'file.xls'
  end

  def self.generate_excel collection, param2 = nil, param3 = nil, param4 = nil
    Excel::Generator.generate(self, collection, param2, param3, param4)
  end
end