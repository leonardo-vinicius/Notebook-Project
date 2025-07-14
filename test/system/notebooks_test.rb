require "application_system_test_case"

class NotebooksTest < ApplicationSystemTestCase
  setup do
    @notebook = notebooks(:one)
  end

  test "visiting the index" do
    visit notebooks_url
    assert_selector "h1", text: "Notebooks"
  end

  test "should create notebook" do
    visit notebooks_url
    click_on "New notebook"

    fill_in "Asset number", with: @notebook.asset_number
    fill_in "Brand", with: @notebook.brand
    fill_in "Description", with: @notebook.description
    fill_in "Equipment identifier", with: @notebook.equipment_identifier
    fill_in "Manufacture date", with: @notebook.manufacture_date
    fill_in "Model", with: @notebook.model
    fill_in "Purchase date", with: @notebook.purchase_date
    fill_in "Serial number", with: @notebook.serial_number
    fill_in "Status", with: @notebook.status
    click_on "Create Notebook"

    assert_text "Notebook was successfully created"
    click_on "Back"
  end

  test "should update Notebook" do
    visit notebook_url(@notebook)
    click_on "Edit this notebook", match: :first

    fill_in "Asset number", with: @notebook.asset_number
    fill_in "Brand", with: @notebook.brand
    fill_in "Description", with: @notebook.description
    fill_in "Equipment identifier", with: @notebook.equipment_identifier
    fill_in "Manufacture date", with: @notebook.manufacture_date
    fill_in "Model", with: @notebook.model
    fill_in "Purchase date", with: @notebook.purchase_date
    fill_in "Serial number", with: @notebook.serial_number
    fill_in "Status", with: @notebook.status
    click_on "Update Notebook"

    assert_text "Notebook was successfully updated"
    click_on "Back"
  end

  test "should destroy Notebook" do
    visit notebook_url(@notebook)
    click_on "Destroy this notebook", match: :first

    assert_text "Notebook was successfully destroyed"
  end
end
