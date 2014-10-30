require 'test_helper'

class ServiciosControllerTest < ActionController::TestCase
  setup do
    @servicio = servicios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio" do
    assert_difference('Servicio.count') do
      post :create, servicio: { estado_de_pago: @servicio.estado_de_pago, fecha_de_creacion: @servicio.fecha_de_creacion, id_servicio: @servicio.id_servicio, nombre: @servicio.nombre, propietario_id: @servicio.propietario_id, tareas_usuarios_id: @servicio.tareas_usuarios_id, tarifa: @servicio.tarifa }
    end

    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should show servicio" do
    get :show, id: @servicio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio
    assert_response :success
  end

  test "should update servicio" do
    patch :update, id: @servicio, servicio: { estado_de_pago: @servicio.estado_de_pago, fecha_de_creacion: @servicio.fecha_de_creacion, id_servicio: @servicio.id_servicio, nombre: @servicio.nombre, propietario_id: @servicio.propietario_id, tareas_usuarios_id: @servicio.tareas_usuarios_id, tarifa: @servicio.tarifa }
    assert_redirected_to servicio_path(assigns(:servicio))
  end

  test "should destroy servicio" do
    assert_difference('Servicio.count', -1) do
      delete :destroy, id: @servicio
    end

    assert_redirected_to servicios_path
  end
end
