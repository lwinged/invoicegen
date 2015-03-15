json.array!(@freelancers) do |freelancer|
  json.extract! freelancer, :id, :email, :name, :firstname
  json.url freelancer_url(freelancer, format: :json)
end
