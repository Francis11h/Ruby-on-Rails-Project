class Search < ApplicationRecord

  def search_houses

    houses = House.all

    houses = houses.where(["location LIKE ?", "%#{location}%"]) if location.present?
    houses = houses.where(["style LIKE ?", style]) if style.present?
    houses = houses.where(["totalfloors LIKE ?", "%#{totalfloors}%"]) if totalfloors.present?
    houses = houses.where(["basement LIKE ?", basement]) if basement.present?
    houses = houses.where(["area >= ?", min_area]) if min_area.present?
    houses = houses.where(["area <= ?", max_area])if max_area.present?
    houses = houses.where(["builtyear >= ?", min_year]) if min_year.present?
    houses = houses.where(["builtyear <= ?", max_year]) if max_year.present?
    houses = houses.where(["price >= ?", min_price]) if min_price.present?
    houses = houses.where(["price <= ?", max_price]) if max_price.present?

    return houses

  end
end
