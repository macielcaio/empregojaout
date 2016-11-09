require 'rails_helper'

feature 'Visitor create categories' do
  scenario 'successfully' do
    #setup
    category = Category.new(name: 'DBA')

    #execuccao
    visit new_category_path

    fill_in 'Nome',      with: category.name

    click_on 'Criar Categoria'

    #expectativas
    expect(page).to have_css('h1', text: category.name)

  end

end
