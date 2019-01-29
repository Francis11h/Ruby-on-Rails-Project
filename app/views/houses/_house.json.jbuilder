json.extract! house, :id, :company_id, :location, :area, :builtyear, :style, :price, :totalfloors, :basement, :currentowner, :user_id, :picture, :created_at, :updated_at
json.url house_url(house, format: :json)
