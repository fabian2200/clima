import {http} from "./http_services";

export function registrarCompra($data) {
    return http().post(
        '/api/guardar-venta', 
        $data, 
        {
            headers: {
                'Content-Type': 'multipart/form-data',
            }
        }
    );
}

export function verVentas() {
    return http().get('/api/ver-ventas');
}

export function datosDashboardAdmin() {
    return http().get('/api/datos-dashboard-admin');
}
