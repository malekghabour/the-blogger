require "test_helper"

class PsotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @psot = psots(:one)
  end

  test "should get index" do
    get psots_url
    assert_response :success
  end

  test "should get new" do
    get new_psot_url
    assert_response :success
  end

  test "should create psot" do
    assert_difference("Psot.count") do
      post psots_url, params: { psot: {} }
    end

    assert_redirected_to psot_url(Psot.last)
  end

  test "should show psot" do
    get psot_url(@psot)
    assert_response :success
  end

  test "should get edit" do
    get edit_psot_url(@psot)
    assert_response :success
  end

  test "should update psot" do
    patch psot_url(@psot), params: { psot: {} }
    assert_redirected_to psot_url(@psot)
  end

  test "should destroy psot" do
    assert_difference("Psot.count", -1) do
      delete psot_url(@psot)
    end

    assert_redirected_to psots_url
  end
end
