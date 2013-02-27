Quando /^mi connetto al sito$/ do
  visit('/')
end

Allora /^visualizzo la pagina di disclaimer$/ do
  page.should have_content("Disclaimer")
end

Allora /^non visualizzo la pagina di spoiler$/ do
  page.should_not have_content("Inserisci nuovo spoiler") 
end

Allora /^visualizzo il link "(.*?)"$/ do |arg1|
  page.should have_link(arg1)
end

Quando /^clicco sul link "(.*?)"$/ do |arg1|
  click_link(arg1)
end

Allora /^visualizzo "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end

