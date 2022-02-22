require "application_system_test_case"

class EcomOrdersTest < ApplicationSystemTestCase
  setup do
    @ecom_order = ecom_orders(:one)
  end

  test "visiting the index" do
    visit ecom_orders_url
    assert_selector "h1", text: "Ecom orders"
  end

  test "should create ecom order" do
    visit ecom_orders_url
    click_on "New ecom order"

    fill_in "Customer name", with: @ecom_order.customer_name
    fill_in "Customer state", with: @ecom_order.customer_state
    fill_in "Itek sku", with: @ecom_order.itek_sku
    fill_in "Num items shipped", with: @ecom_order.num_items_shipped
    fill_in "Payment method", with: @ecom_order.payment_method
    fill_in "Platform order num", with: @ecom_order.platform_order_num
    fill_in "Price", with: @ecom_order.price
    fill_in "Purchase date", with: @ecom_order.purchase_date
    fill_in "Sales channel", with: @ecom_order.sales_channel
    fill_in "Shipped at", with: @ecom_order.shipped_at
    fill_in "Status", with: @ecom_order.status
    click_on "Create Ecom order"

    assert_text "Ecom order was successfully created"
    click_on "Back"
  end

  test "should update Ecom order" do
    visit ecom_order_url(@ecom_order)
    click_on "Edit this ecom order", match: :first

    fill_in "Customer name", with: @ecom_order.customer_name
    fill_in "Customer state", with: @ecom_order.customer_state
    fill_in "Itek sku", with: @ecom_order.itek_sku
    fill_in "Num items shipped", with: @ecom_order.num_items_shipped
    fill_in "Payment method", with: @ecom_order.payment_method
    fill_in "Platform order num", with: @ecom_order.platform_order_num
    fill_in "Price", with: @ecom_order.price
    fill_in "Purchase date", with: @ecom_order.purchase_date
    fill_in "Sales channel", with: @ecom_order.sales_channel
    fill_in "Shipped at", with: @ecom_order.shipped_at
    fill_in "Status", with: @ecom_order.status
    click_on "Update Ecom order"

    assert_text "Ecom order was successfully updated"
    click_on "Back"
  end

  test "should destroy Ecom order" do
    visit ecom_order_url(@ecom_order)
    click_on "Destroy this ecom order", match: :first

    assert_text "Ecom order was successfully destroyed"
  end
end
