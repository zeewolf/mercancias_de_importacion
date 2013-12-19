require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
doc = Nokogiri::XML.parse(File.open("#{Rails.root}/db/prod_seeds.xml"))
doc.xpath('//products/product').each do |attrs_list|
  name_2_val = {}
  attrs_list.each{|prod_attr| name_2_val[prod_attr.first.to_sym] = prod_attr.second }

  product = Product.create(name_2_val)
  product.image = open(name_2_val[:image]) if name_2_val[:image].present?
end