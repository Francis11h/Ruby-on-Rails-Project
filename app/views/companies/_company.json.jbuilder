json.extract! company, :id, :name, :website, :address, :size, :founded, :revenue, :synopsis, :created_at, :updated_at, :user_id
json.url company_url(company, format: :json)
