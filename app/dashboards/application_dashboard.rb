class ApplicationDashboard < Administrate::BaseDashboard

  COLLECTION_ORDER = {id: :desc}

  ALLOW_MASS_ASSIGNMENT = true
  
  SHOW_INDEX_ACTIONS = true
  
  EXPORT_TO_EXCEL = true

  EXCEL_ATTRIBUTES = []
end
