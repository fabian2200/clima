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
        <div class="card">
            <div class="card-content" style="padding: 20px; min-height: 500px">
                <h3>Seleccione una empresa</h3>
                <div class="form-group">
                    <select  @change="onChangeEmpresa($event)" id="my-select" class="form-control" name="">
                        <option value="">Seleccione....</option>
                        <option v-for="(item, index) in lista_empresas" :value="item.id" :key="index">{{item.nombre}}</option>
                    </select>
                </div>
                <hr>
                <div class="row" style="padding-bottom: 15px">
                    <div class="col-lg-6 text-center">
                        <h4>Nombre Actual</h4>
                    </div>
                    <div class="col-lg-6 text-center">
                        <h4>Modificar Nombre</h4>
                    </div>
                </div>
                <div v-if="lista_areas.length > 0" class="text-center">
                    <div v-for="(item, index) in lista_areas" :key="index" class="row" style="padding-bottom: 15px">
                        <div class="col-lg-6">
                            <input class="form-control" disabled :value="item.nombre_area_actual" type="text" name="">
                        </div>  
                        <div class="col-lg-6">
                            <input class="form-control" v-model="item.nombre_area" type="text" name="">
                        </div>    
                    </div>
                    <hr>
                    <button
                        style="width: 40%"
                        type="button"
                        class="btn btn-success"
                        @click="editarAreas"
                    >
                        Guardar Cambios <i class="fas fa-save"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
import * as clienteService from "../../services/cliente_service";
import Loading from 'vue3-loading-overlay';
import Swal from 'sweetalert2';

export default {
    components: {
        Loading
    },
    data() {
        return {
            lista_areas: [],
            loading: false,
            lista_empresas:[],
            id_empresa_seleccionada: 0
        }
    },
    mounted() {
        this.consultarEmpresas();
    },
    methods: {
        async consultarEmpresas(){
            this.loading = true;
            try {
                await clienteService.verEmpresas().then(respuesta => {
                    this.lista_empresas = respuesta.data;
                    this.loading = false;
                });
            
            } catch (error) {
                console.log(error);
            }
        },
        onChangeEmpresa(event){
            this.id_empresa_seleccionada = event.target.value;
            this.buscarAreasEmpresa(this.id_empresa_seleccionada);
        },
        async buscarAreasEmpresa(id_empresa){
            this.loading = true;
            await clienteService.verAreas(id_empresa).then(respuesta => {
                this.lista_areas = respuesta.data;
                this.loading = false;
            });
        },
        async editarAreas(){
            this.loading = true;
            
            var datos_areas = {
                areas: this.lista_areas
            };

            await clienteService.editarAreas(datos_areas).then(respuesta => {
                Swal.fire({
                    position: "center",
                    icon: "success",
                    title: respuesta.data[0],
                    showConfirmButton: false,
                    timer: 2500
                });
                this.loading = false;
                this.buscarAreasEmpresa(this.id_empresa_seleccionada);
            });
        }
    }
}
</script>
<style lang="">
    
</style>