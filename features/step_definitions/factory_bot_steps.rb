Given("a(?:n) {word} exists") do |factory|
  FactoryBot.create(factory)
end

Given("the following {word} exists") do |factory, table|
  table.hashes.each do |row|
    # FactoryBot.create(factory, row)
  end
end
