When("I browse to {string}") do |url|
  visit url
end

Then("I receive some dope vibes.") do
  expect(page).to have_content("You are a very nice person.")
end
