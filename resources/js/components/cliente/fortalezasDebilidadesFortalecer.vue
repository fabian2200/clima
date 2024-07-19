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
            <br>
            <div class="row" style="padding: 10px">
                <div class="col-lg-7"></div>
                <div class="col-lg-3" style="text-align: right">
                    <button
                        type="button"
                        class="btn btn-primary"
                        @click="generarPDF"
                    >
                        Descargar este Informe <i class="fas fa-file-pdf"></i>
                    </button>
                </div>
                <div class="col-lg-2" style="text-align: right">
                    <button
                        data-toggle="modal" data-target="#modalInformes"
                        type="button"
                        class="btn btn-warning"
                    >
                        Descargar otro Informe <i class="fas fa-file-pdf"></i>
                    </button>
                </div>
            </div>
            <div class="modal fade bd-example-modal-lg" id="modalInformes" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel">Seleccione un tipo de informe</h3>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <button @click="irPaginaInforme('/informe-socio/'+id_empresa)" type="button" class="btn_informe btn btn-outline-primary">Informe <br> Sociodemográfico</button>
                                </div>  
                                <div class="col-lg-6">
                                    <button @click="irPaginaInforme('/informe-general-dimensiones/'+id_empresa)" type="button" class="btn_informe btn btn-outline-success">Informe General <br> de Dimensiones</button>
                                </div> 
                                <div class="col-lg-6">
                                    <button @click="irPaginaInforme('/comparacion-dimensiones/'+id_empresa)" type="button" class="btn_informe btn btn-outline-info">Comparación <br> de Dimensiones</button>
                                </div>  
                                <div class="col-lg-6">
                                    <button @click="irPaginaInforme('/fortalezas-debilidades-fortalecer/'+id_empresa)" type="button" class="btn_informe btn btn-outline-secondary">Fortalezas <br> y <br> Debilidades</button>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div v-if="loading2 == false" id="area_informe_fortalezas" class="card-content" style="padding: 0px 100px 90px 110px; margin-right: 10px">
                <br>
                <div style="text-align: left">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 ">
                                <nav>
                                    <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                        <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Fortalezas</a>
                                        <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Debilidades</a>
                                        <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Aspectos por fortalecer</a>
                                    </div>
                                </nav>
                                <div style="padding: 38px !important;" class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                        <br>
                                        <h3><strong>Fortalezas</strong> (aspectos por mantener)</h3>
                                        <hr>
                                        <h5>A continuación de muestran las dimensiones y sus aspectos evaluados que se consideran una fortaleza para la entidad en lo referente a su clima organizacional</h5>
                                        <h5><strong>Nota:</strong> se enumeran las dimensiones que tengan un promedio de igual o superior a <strong>3.9</strong>, asi como también los aspectos con un promedio de igual o superior a <strong>3.9</strong></h5>
                                        <br><br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in fortalezas" :key="index">
                                                <td :style="'background-color:'+item.color"><strong>{{ item.dim }}</strong></td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Aspecto</th>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in aspectos.fortalezas_aspectos" :key="index">
                                                <td :style="'background-color:'+item.color">{{ item.pregunta }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.dim_padre }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                    </div>
                                    <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                        <br>
                                        <h3><strong>Debilidades </strong> (aspectos por intervenir de manera inmediata)</h3>
                                        <hr>
                                        <h5>A continuación de muestran las dimensiones y sus aspectos evaluados que se consideran una fortaleza para la entidad en lo referente a su clima organizacional</h5>
                                        <h5><strong>Nota:</strong> se enumeran las dimensiones que tengan un promedio de igual o inferior a <strong>2.9</strong>, asi como también los aspectos con un promedio de igual o inferior a <strong>2.9</strong></h5>
                                        <br><br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in debilidades" :key="index">
                                                <td :style="'background-color:'+item.color"><strong>{{ item.dim }}</strong></td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Aspecto</th>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in aspectos.debilidades_aspectos" :key="index">
                                                <td :style="'background-color:'+item.color">{{ item.pregunta }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.dim_padre }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                    </div>
                                    <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                        <br>
                                        <h3><strong>Aspectos por fortalecer</strong></h3>
                                        <hr>
                                        <h5>A continuación de muestran las dimensiones y sus aspectos evaluados que se consideran una fortaleza para la entidad en lo referente a su clima organizacional</h5>
                                        <h5><strong>Nota:</strong> se enumeran las dimensiones que tengan un promedio entre <strong>3.0 a 3.8</strong>, asi como también los aspectos con un promedio entre <strong>3.0 a 3.8</strong></h5>
                                        <br><br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in fortalecer" :key="index">
                                                <td :style="'background-color:'+item.color"><strong>{{ item.dim }}</strong></td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                        <table class="informe_fortalezas">
                                            <tr>
                                                <th>Aspecto</th>
                                                <th>Dimension</th>
                                                <th>Promedio</th>
                                            </tr>
                                            <tr v-for="(item, index) in aspectos.fortalecer_aspectos" :key="index">
                                                <td :style="'background-color:'+item.color">{{ item.pregunta }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.dim_padre }}</td>
                                                <td :style="'background-color:'+item.color">{{ item.promedio }}</td>
                                            </tr>
                                        </table>
                                        <br>
                                    </div>
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
import * as clienteService from "../../services/cliente_service";
import Loading from 'vue3-loading-overlay';
import Swal from 'sweetalert2';

import * as am4core from "@amcharts/amcharts4/core";
import * as am4charts from "@amcharts/amcharts4/charts";
import am4themes_animated from "@amcharts/amcharts4/themes/animated";
am4core.useTheme(am4themes_animated);

export default {
    components: {
        Loading
    },
    data() {
        return {
            loading: false,
            loading2: true,
            data_general: {},
            id_empresa: null,
            dimensiones: [],
            aspectos: [],
            fortalezas: [],
            fortalecer: [],
            debilidades: [],
        }
    },
    mounted() {
        this.id_empresa = this.$route.params.id;
        this.fortalezasDebilidadesFortalecer();
    },
    methods: {
        async fortalezasDebilidadesFortalecer(){
            this.loading = true;
            this.loading2 = true;
            await clienteService.fortalezasDebilidadesFortalecer(this.id_empresa).then(respuesta => {
                this.dimensiones = respuesta.data.dimensiones;
                this.aspectos = respuesta.data.aspectos;
                this.dimensiones.forEach(element => {
                    if(element.promedio <= 2.9){
                        this.debilidades.push(element);
                    }else{
                        if (element.promedio >= 3 && element.promedio <= 3.8) {
                            this.fortalecer.push(element);
                        }else{
                            this.fortalezas.push(element);
                        }
                    }
                });
                this.loading = false;
                this.loading2 = false;
            });
        },
        generarPDF(){
            this.loading = true;
            setTimeout(()=>{
                $("#area_informe_fortalezas").printThis({
                    debug: false,     
                    importCSS: true,            
                    importStyle: true,        
                    printContainer: true,
                    pageTitle: null,
                    afterPrint: this.loading = false,
                    header: "<style>@page { margin: 5mm 5mm 5mm 5mm; }</style>"
                });
            }, 100)
        },
        irPaginaInforme(ruta){
            $("#modalInformes").modal('hide');
            location.href = ruta;
        }
    },
}
</script>
<style>
    .pagina-salto {
        page-break-after: always;
    }

    .tapa {
        width: 100px;
        height: 40px;
    }

    .informe_fortalezas {
        width: 100%;
        border-collapse: collapse;
        margin: 12px 0;
        font-size: 14px;
        text-align: left;
    }
    .informe_fortalezas th, .informe_fortalezas td {
        border: 1px solid #c9c9c9;
        padding: 12px;
        text-align: center;
    }
    .informe_fortalezas th {
        background-color: #009199;
        color: #ffff;
    }
    .informe_fortalezas tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    .informe_fortalezas tr:hover {
        background-color: #f1f1f1;
    }

    nav > .nav.nav-tabs{
        border: none;
        color:#fff;
        background:#272e38;
        border-radius:0;
    }
    nav > div a.nav-item.nav-link,
    nav > div a.nav-item.nav-link.active{
        border: none;
        padding: 18px 25px;
        color:#fff;
        background:#272e38;
        border-radius:0;
    }

    nav > div a.nav-item.nav-link.active:after{
        content: "";
        position: relative;
        bottom: -60px;
        left: -10%;
        border: 15px solid transparent;
        border-top-color: #009199  ;
    }

    .tab-content{
        background: #fdfdfd;
        line-height: 25px;
        border: 1px solid #ddd;
        border-top:5px solid #009199 ;
        border-bottom:5px solid #009199 ;
        padding:30px 25px;
    }

    nav > div a.nav-item.nav-link:hover,
    nav > div a.nav-item.nav-link:focus{
        border: none;
        background: #009199 ;
        color:#fff;
        border-radius:0;
        transition:background 0.20s linear;
    }
</style>