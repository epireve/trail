require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { address: @venue.address, email: @venue.email, lat: @venue.lat, lng: @venue.lng, logo: @venue.logo, mini_desc: @venue.mini_desc, more_details: @venue.more_details, name: @venue.name, phone: @venue.phone, website: @venue.website }
    end

    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue
    assert_response :success
  end

  test "should update venue" do
    patch :update, id: @venue, venue: { address: @venue.address, email: @venue.email, lat: @venue.lat, lng: @venue.lng, logo: @venue.logo, mini_desc: @venue.mini_desc, more_details: @venue.more_details, name: @venue.name, phone: @venue.phone, website: @venue.website }
    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_redirected_to venues_path
  end
end
