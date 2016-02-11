json.array!(@newbooks) do |newbook|
  json.extract! newbook, :id, :Name, :Author
  json.url newbook_url(newbook, format: :json)
end
