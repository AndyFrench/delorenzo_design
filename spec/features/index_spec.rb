require "spec_helper"

describe "index", js: true, type: :feature, js_errors: true do
  before do
    visit '/'
  end

  it "has the correct title header" do
    expect(page).to have_selector "body > header"
    within "body > header" do
      expect(page).to have_content("Site")
    end
  end

  it "has an interactive main menu" do
    expect(page).to have_selector "#menu_link"
    find("#menu_link").click
    expect(page).to have_selector "body:not(.menu_closed)"
  end

end
