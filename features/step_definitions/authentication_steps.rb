Given /^a user visits the pesquisa page$/ do
  visit pesquisa_path
end

When /^he submits invalid pesquisa information$/ do
  click_button "Pesquisa"
end

Then /^he should see an error message$/ do
  page.should have_selector('div.alert.alert-error')
end

Given /^the shop has an account$/ do
  @shop = Shop.create(name: "Loja",address: "Rua Sobe e Desce", postalcode: "1234-567")
end

When /^the user submits valid pesquisa information$/ do
  fill_in "Name",    with: @shop.name
  click_button "Pesquisa"
end

Then /^the shop profile page is shown$/ do
  page.should have_selector('title', text: @shop.name)
end