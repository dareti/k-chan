json.histories @histories do |history|
  json.(history, :id, :customer_id, :check_day, :meter)
end
