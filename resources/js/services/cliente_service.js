import {http} from "./http_services";

export function verEmpresas() {
    return http().get('/api/ver-empresas');
}


export function datosDashboardCliente() {
    return http().get('/api/datos-dashboard-cliente');
}

export function registrarEmpresa($data) {
    return http().post(
        '/api/guardar-empresa', 
        $data, 
        {
            headers: {
                'Content-Type': 'multipart/form-data',
            }
        }
    );
}

export function disminuirEmpleadosEmpresa($data) {
    return http().post(
        '/api/disminuir-empleados-empresa', 
        $data, 
        {
            headers: {
                'Content-Type': 'multipart/form-data',
            }
        }
    );
}

export function aumentarEmpleadosEmpresa($data) {
    return http().post(
        '/api/aumentar-empleados-empresa', 
        $data, 
        {
            headers: {
                'Content-Type': 'multipart/form-data',
            }
        }
    );
}

export function editarEmpresa($data) {
    return http().post(
        '/api/editar-empresa', 
        $data, 
        {
            headers: {
                'Content-Type': 'multipart/form-data',
            }
        }
    );
}