json.array!(@gitsongs) do |gitsong|
  json.extract! gitsong, :id, :repo, :data, :share_url
  json.url gitsong_url(gitsong, format: :json)
end
