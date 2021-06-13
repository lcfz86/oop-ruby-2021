class Phone
  attr_reader :brand, :model, :storage
  attr_writer :brand, :model, :storage

  def initialize(brand, model, storage)
    @brand = brand
    @model = model
    @storage = storage
  end
end

phone = []
phone.push Phone.new('Samsung', 'Galaxy S21 Ultra 5G', '512GB')
phone.push Phone.new('Iphone', 'Iphone 12', '256GB')
phone.push Phone.new('Huawei', 'Mate40 Pro', '256GB')
phone.push Phone.new('Vivo', 'Nex 3', '256GB')
phone.push Phone.new('Oppo', 'Reno5 5G', '128GB')

phone.each do |phone|
  puts "=" * 40
  puts "Brand: #{phone.brand}"
  puts "Phone Model: #{phone.model}"
  puts "Storage Size: #{phone.storage}"
  puts "=" * 40
end
