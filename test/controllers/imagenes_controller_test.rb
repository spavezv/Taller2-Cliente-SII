require 'test_helper'

class ImagenesControllerTest < ActionController::TestCase
  test "should get subir_imagen" do
    get :subir_imagen
    assert_response :success
  end

  test "should get listar_imagen" do
    get :listar_imagen
    assert_response :success
  end

  test "should get borrar_imagen" do
    get :borrar_imagen
    assert_response :success
  end

  test "should get guardar_comentario" do
    get :guardar_comentario
    assert_response :success
  end

end
