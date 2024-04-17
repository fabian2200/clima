<template lang="">
<div>
    <loading :active="loading" 
        :can-cancel="true"
        loader="bars" 
        color="#38b4c5"
        :height=100
        :width=200
        :on-cancel="onCancel"
        :is-full-page="true">
    </loading>
   
    <div class="content-body">
        <div v-if="this.datos_usuario.rol == '1'">
            <div class="row">
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-content">
                            <div class="media align-items-stretch">
                                <div class="p-2 text-center bg-primary bg-darken-2">
                                    <i class="icon-user font-large-2 white"></i>
                                </div>
                                <div class="p-2 bg-gradient-x-primary white media-body">
                                    <h3>Clientes</h3>
                                    <h3 class="text-bold-400 mb-0"><i class="feather icon-arrow-up"></i> {{datos_dashboard_admin.clientes}} </h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-content">
                            <div class="media align-items-stretch">
                                <div class="p-2 text-center bg-danger bg-darken-2">
                                    <i style="color:white" class="fas fa-3x fa-map-pin"></i>
                                </div>
                                <div class="p-2 bg-gradient-x-danger white media-body">
                                    <h3>Pines Vendidos</h3>
                                    <h3 class="text-bold-400 mb-0"><i class="feather icon-arrow-up"></i> {{datos_dashboard_admin.pines}}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="card">
                        <div class="card-content">
                            <div class="media align-items-stretch">
                                <div class="p-2 text-center bg-warning bg-darken-2">
                                    <i class="fas fa-3x fa-dollar-sign white"></i>
                                </div>
                                <div class="p-2 bg-gradient-x-warning white media-body">
                                    <h3>Total ventas</h3>
                                    <h3 class="text-bold-400 mb-0">$ {{datos_dashboard_admin.total_dinero}}</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Recent Orders & Monthly Salse -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="card" style="height: fit-content !important;">
                        <div class="card-header">
                            <h4 class="card-title">Ventas Realizadas</h4>
                            <a class="heading-elements-toggle"><i class="fa fa-ellipsis-v font-medium-3"></i></a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li><a data-action="reload"><i class="feather icon-rotate-cw"></i></a></li>
                                    <li><a data-action="expand"><i class="feather icon-maximize"></i></a></li>
                                </ul>
                            </div>
                            <hr>
                        </div>
                        <div class="card-content">
                            <div class="table-responsive">
                                <table id="tablaVentas" style="width: 100%">
                                    <thead>
                                        <tr>
                                            <th>Fecha Venta</th>
                                            <th>Cliente</th>
                                            <th>Pines</th>
                                            <th>Precio x Pin</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="(item, index) in lista_ventas" :key="index">
                                            <td>{{ item.fecha }}</td>
                                            <td>{{ item.nombres}} {{item.apellidos}}</td>
                                            <td>{{ item.pines_comprados }}</td>
                                            <td>{{ item.precio_pin }}</td>
                                            <td>{{ item.total }}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</template>
<script>
import Loading from 'vue3-loading-overlay';
import 'vue3-loading-overlay/dist/vue3-loading-overlay.css';
import * as usuarioService from "../../services/usuario_service.js";
import * as adminService from "../../services/admin_service";

export default {
    components: {
        Loading
    },
    data() {
        return {
            loading: false,
            datos_usuario: {
                nombre: "",
                imagen: "",
                rol: ""
            },
            lista_ventas: [],
            datos_dashboard_admin: {
                clientes: 0,
                pines: 0,
                total_dinero: 0
            }
        }
    },
    mounted() {
       this.misDatos();
       this.datosDashboardAdmin();
       this.consultarDatosAdmin();
    },
    methods: {
        misDatos: async function () {
            this.loading = true;
            try {
                await usuarioService.misDatos().then(respuesta => {
                    this.datos_usuario = respuesta.data;
                    this.loading = false;
                });
            } catch (error) {
                console.log(error);
            }
        },
        dataTables() {
            
            setTimeout(() => {
                $("#tablaVentas").DataTable({
                    ordering: false,
                    language: {
                        "decimal": "",
                        "emptyTable": "No hay información",
                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Registros",
                        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",
                        "infoFiltered": "(Filtrado de _MAX_ total Registros)",
                        "infoPostFix": "",
                        "thousands": ",",
                        "lengthMenu": "Mostrar _MENU_ Registros",
                        "loadingRecords": "Cargando...",
                        "processing": "Procesando...",
                        "search": "Buscar:",
                        "zeroRecords": "Sin resultados encontrados",
                        "paginate": {
                            "first": "Primero",
                            "last": "Ultimo",
                            "next": ">>",
                            "previous": "<<"
                        },
                    },
                });
                this.loading = false;
            }, 10);
        },
        async consultarDatosAdmin(){
            this.loading = true;
            try {
                await adminService.verVentas().then(respuesta => {
                    this.lista_ventas = respuesta.data;
                    setTimeout(()=>{
                        this.dataTables();
                    }, 200)
                });
               
            } catch (error) {
                console.log(error);
            }
        },
        async datosDashboardAdmin(){
            this.loading = true;
            try {
                await adminService.datosDashboardAdmin().then(respuesta => {
                    this.datos_dashboard_admin = respuesta.data;
                });
            } catch (error) {
                console.log(error);
            }
        },
    },
}
</script>
<style >
    i {
        line-height: 1.45;
    }
</style>