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
            <button
                type="button"
                class="btn btn-info"
                style="width: 200px; position: absolute; right: 25px; top: 27px;"
                @click="generarPDF"
            >
                Descargar informe <i class="fas fa-file-pdf"></i>
            </button>
            
            <div v-if="loading2 == false" id="area_informe_comparacion" class="card-content" style="padding: 50px 100px 90px 110px; margin-right: 10px">
                <br>
                <div style="text-align: left">
                    <br>
                    <h3><strong>COMPARACIÓN DE DIMENSIONES</strong></h3>
                    <br>
                    <h6>En este aparte se presentan las tablas cruzadas de cada una de las <strong> 10 dimensiones </strong> del clima organizacional por área, sexo, edad, tiempo de antigüedad en el cargo y en la entidad.</h6>
                    <br>
                    <br>
                    <hr>
                    <br>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 ">
                            <nav>
                                <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Area Trabajo</a>
                                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Sexo</a>
                                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Edad</a>
                                    <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about" role="tab" aria-controls="nav-about" aria-selected="false">Antigüedad en el Cargo</a>
                                    <a class="nav-item nav-link" id="nav-about-tab" data-toggle="tab" href="#nav-about-2" role="tab" aria-controls="nav-about" aria-selected="false">Antigüedad en la entidad</a>  
                                </div>
                            </nav>
                            <div style="padding: 38px !important;" class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <h4 style="font-weight: bold; color: #009199;">COMPARACIÓN POR ÁREA DE TRABAJO</h4>
                                    <br>    
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">FUNCIONES  Y  ENTRENAMIENTO</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio1 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">AUTONOMÍA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio2 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RECOMPENSA DIRECTA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio3 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RELACIONES INTERPERSONALES</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio4 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COOPERACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio5 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">LIBRE EXPRESIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio6 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">IDENTIDAD</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio7 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">MOTIVACIÓN INSTITUCIONAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio8 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">SATISFACCIÓN LABORAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio9 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COMUNICACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Área</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_area_trabajo" :key="index">
                                            <td>{{ item.area.nombre_area }}</td>
                                            <td>{{ item.promedio10 }}</td>
                                        </tr>
                                    </table>
                                    <br>
                                    <br>
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <br>
                                    <h4 style="font-weight: bold; color: #009199;">COMPARACIÓN POR SEXO</h4>
                                    <br>    
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">FUNCIONES  Y  ENTRENAMIENTO</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio1 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">AUTONOMÍA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio2 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RECOMPENSA DIRECTA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio3 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RELACIONES INTERPERSONALES</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio4 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COOPERACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio5 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">LIBRE EXPRESIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio6 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">IDENTIDAD</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio7 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">MOTIVACIÓN INSTITUCIONAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio8 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">SATISFACCIÓN LABORAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio9 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COMUNICACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Sexo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_sexo" :key="index">
                                            <td>{{ item.sexo }}</td>
                                            <td>{{ item.promedio10 }}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <br>
                                    <h4 style="font-weight: bold; color: #009199;">COMPARACIÓN POR GRUPO DE EDAD</h4>
                                    <br>    
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">FUNCIONES  Y  ENTRENAMIENTO</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio1 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">AUTONOMÍA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio2 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RECOMPENSA DIRECTA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio3 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RELACIONES INTERPERSONALES</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio4 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COOPERACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio5 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">LIBRE EXPRESIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio6 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">IDENTIDAD</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio7 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">MOTIVACIÓN INSTITUCIONAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio8 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">SATISFACCIÓN LABORAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio9 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COMUNICACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Grupo de Edad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_edad" :key="index">
                                            <td>{{ item.edad }} Años</td>
                                            <td>{{ item.promedio10 }}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="nav-about" role="tabpanel" aria-labelledby="nav-about-tab">
                                    <br>
                                    <h4 style="font-weight: bold; color: #009199;">COMPARACIÓN POR ANTIGÜEDAD EN EL CARGO</h4>
                                    <br>    
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">FUNCIONES  Y  ENTRENAMIENTO</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio1 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">AUTONOMÍA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio2 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RECOMPENSA DIRECTA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio3 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RELACIONES INTERPERSONALES</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio4 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COOPERACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio5 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">LIBRE EXPRESIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio6 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">IDENTIDAD</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio7 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">MOTIVACIÓN INSTITUCIONAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio8 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">SATISFACCIÓN LABORAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio9 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COMUNICACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en el Cargo</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_cargo" :key="index">
                                            <td>{{ item.tiempo_cargo }} Años</td>
                                            <td>{{ item.promedio10 }}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="tab-pane fade" id="nav-about-2" role="tabpanel" aria-labelledby="nav-about-tab">
                                    <br>
                                    <h4 style="font-weight: bold; color: #009199;">COMPARACIÓN POR ANTIGÜEDAD LA ENTIDAD</h4>
                                    <br>    
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">FUNCIONES  Y  ENTRENAMIENTO</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio1 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">AUTONOMÍA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio2 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RECOMPENSA DIRECTA</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio3 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">RELACIONES INTERPERSONALES</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio4 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COOPERACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio5 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">LIBRE EXPRESIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio6 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">IDENTIDAD</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio7 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">MOTIVACIÓN INSTITUCIONAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio8 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">SATISFACCIÓN LABORAL</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio9 }}</td>
                                        </tr>
                                    </table>
                                    <table class="informe_comparacion">
                                        <tr>
                                            <th colspan="2">COMUNICACIÓN</th>
                                        </tr>
                                        <tr>
                                            <th style="width: 50%">Antigüedad en la Entidad</th>
                                            <th>Promedio</th>
                                        </tr>
                                        <tr v-for="(item, index) in datos.data_tiempo_entidad" :key="index">
                                            <td>{{ item.tiempo_entidad }} Años</td>
                                            <td>{{ item.promedio10 }}</td>
                                        </tr>
                                    </table>
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
            loading2: false,
            data_general: {},
            id_empresa: null,
            datos: []
        }
    },
    mounted() {
        this.id_empresa = this.$route.params.id;
        this.compararDimensiones();
    },
    methods: {
        async compararDimensiones(){
            this.loading = true;
            this.loading2 = true;
            await clienteService.comparacionDimensiones(this.id_empresa).then(respuesta => {
                this.datos = respuesta.data;
                this.loading = false;
                this.loading2 = false;
            });
        },
        generarPDF(){
            this.loading = true;
            setTimeout(()=>{
                $("#area_informe_comparacion").printThis({
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

    .informe_comparacion {
        width: 100%;
        border-collapse: collapse;
        margin: 12px 0;
        font-size: 16px;
        text-align: left;
    }
    .informe_comparacion th, .informe_comparacion td {
        border: 1px solid #ddd;
        padding: 12px;
        text-align: center;
    }
    .informe_comparacion th {
        background-color: #d2f7ef;
        color: #333;
    }
    .informe_comparacion tr:nth-child(even) {
        background-color: #f9f9f9;
    }
    .informe_comparacion tr:hover {
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