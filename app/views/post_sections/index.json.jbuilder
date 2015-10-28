json.array!(@post_sections) do |post_section|
  json.extract! post_section, :id
  json.url post_section_url(post_section, format: :json)
end
