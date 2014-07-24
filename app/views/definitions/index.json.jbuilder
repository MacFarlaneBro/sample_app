json.array!(@definitions) do |definition|
  json.extract! definition, :name, :def
  json.url definition_url(definition, format: :json)
end