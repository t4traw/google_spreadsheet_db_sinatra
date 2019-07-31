require "google_drive"

session = GoogleDrive::Session.from_config("config.json")
key = '1dEZfACTlELSH-jAi3ggMqUKE6eq7w0Z1SyCtoO0H5wo'
sheet = session.spreadsheet_by_key(key).worksheet_by_title("lang")

(1..sheet.num_rows).each do |row|
  (1..sheet.num_cols).each do |col|
    p sheet[row, col]
  end
end

sheet[sheet.num_rows + 1, 1] = "のーど"
sheet[sheet.num_rows + 1, 1] = "すいふと"
sheet.save