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
                class="btn btn-primary"
                style="width: 200px; position: absolute; right: 25px; top: 27px;"
                @click="generarPDF"
            >
                Descargar informe <i class="fas fa-file-pdf"></i>
            </button>
            
            <div v-if="loading2 == false" id="area_informe" class="card-content" style="padding: 50px 100px 90px 110px; margin-right: 70px">
                <br>
                <div style="text-align: left">
                    <br>
                    <h3><strong>VALORACIÓN DEL CLIMA ORGANIZACIONAL</strong></h3>
                    <br>
                    <h6>A continuación se presentan los resultados de la valoración del Clima organizacional, de la <strong>figura 11</strong> hasta la <strong>figura 21</strong>. Se presentan los promedios de todas las dimensiones y posteriormente, los de cada dimensión y de los aspectos que componen cada una de ellas.</h6>
                    <br>
                    <br>
                    <hr>
                    <div>
                        <div id="grafica_general" style="height: 550px;"></div>
                        <br>
                    </div>
                    <div>
                        <div id="grafica_dim1" style="height: 440px;"></div>
                        <br>
                    </div>
                    <div class="pagina-salto"></div>
                    <div>
                        <div id="grafica_dim2" style="height: 440px;"></div>
                        <br>
                    </div>
                    <div>
                        <div id="grafica_dim3" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div>
                        <div id="grafica_dim4" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div class="pagina-salto"></div>
                    <div>
                        <div id="grafica_dim5" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div>
                        <div id="grafica_dim6" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div>
                        <div id="grafica_dim7" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div class="pagina-salto"></div>
                    <div>
                        <div id="grafica_dim8" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div>
                        <div id="grafica_dim9" style="height: 440px;"></div>
                        <br><br>
                    </div>
                    <div>
                        <div id="grafica_dim10" style="height: 440px;"></div>
                        <br><br>
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
            chart_sexo: null,
            total_personas: 0
        }
    },
    mounted() {
        this.id_empresa = this.$route.params.id;
        this.informeGeneralDimensiones();
    },
    methods: {
        async informeGeneralDimensiones(){
            this.loading = true;
            this.loading2 = true;
            await clienteService.informeGeneralDimensiones(this.id_empresa).then(respuesta => {
                this.data_general = respuesta.data;
                this.loading = false;
                this.loading2 = false;
                setTimeout(()=>{
                   this.generarGraficoGeneral();
                   this.generarDim1();
                   this.generarDim2();
                   this.generarDim3();
                   this.generarDim4();
                   this.generarDim5();
                   this.generarDim6();
                   this.generarDim7();
                   this.generarDim8();
                   this.generarDim9();
                   this.generarDim10();
                }, 500)
            });
        },
        generarGraficoGeneral() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_general', am4charts.XYChart3D);
            chart.data = [];
            
            chart.data.push({
                country: "1. FUNCIONES Y ENTRENAMIENTO",
                visits: this.data_general.general.dim1,
            });

            chart.data.push({
                country: "2. AUTONOMÍA",
                visits: this.data_general.general.dim2,
            });

            chart.data.push({
                country: "3. RECOMPENSA DIRECTA",
                visits: this.data_general.general.dim3,
            });

            chart.data.push({
                country: "4. RELACIONES INTERPERSONALES",
                visits: this.data_general.general.dim4,
            });

            chart.data.push({
                country: "5. COOPERACIÓN",
                visits: this.data_general.general.dim5,
            });

            chart.data.push({
                country: "6. LIBRE EXPRESIÓN",
                visits: this.data_general.general.dim6,
            });

            chart.data.push({
                country: "7. IDENTIDAD",
                visits: this.data_general.general.dim7,
            });

            chart.data.push({
                country: "8. MOTIVACIÓN INSTITUCIONAL",
                visits: this.data_general.general.dim8,
            });

            chart.data.push({
                country: "9. SATISFACCIÓN LABORAL",
                visits: this.data_general.general.dim9,
            });

            chart.data.push({
                country: "10. COMUNICACIÓN",
                visits: this.data_general.general.dim10,
            });
           
            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 11</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración general del clima organizacional por dimensiones</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.rotation = -45;
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.dx = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "right";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.fontSize = 9;
            categoryAxis.tooltip.label.rotation = -45;
            categoryAxis.tooltip.label.horizontalCenter = "right";
            categoryAxis.tooltip.label.verticalCenter = "middle";

            
            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 12;
            labelBullet.label.dy = -12;
            labelBullet.label.dy = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

           this.agregardivblanco("grafica_general");
        },
        generarDim1() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim1', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim1_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 12</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Funciones y Entrenamiento</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 15;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim1");
        },
        generarDim2() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#e83e8c")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim2', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim2_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 13</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Autonomía</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim2");
        },
        generarDim3() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim3', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim3_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 14</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Recompensa Directa</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim3");
        },
        generarDim4() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#e83e8c")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim4', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim4_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 15</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Relaciones Interpersonales</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim4");
        },
        generarDim5() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim5', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim5_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 16</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Cooperación</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim5");
        },
        generarDim6() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#e83e8c")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim6', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim6_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 17</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Libre Expresión</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim6");
        },
        generarDim7() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim7', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim7_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 18</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Identidad</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            
            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim7");
        },
        generarDim8() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#e83e8c")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim8', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim8_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 19</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Motivación Institucional</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim8");
        },
        generarDim9() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim9', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim9_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 20</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Satisfacción Laboral</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            
            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim9");
        },
        generarDim10() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#e83e8c")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_dim10', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_general.dim10_promedios.forEach(element => {
                chart.data.push({
                    country: element.pregunta,
                    visits: element.promedio,
                });
            });

            var title = chart.titles.create();
            title.html = "<strong><p style='margin: 0px;'>Figura 21</p></strong>"+
            "<p style='margin-right: 40px'><i>Promedio de la valoración de los  aspectos de la dimensión Comunicación</i></p></strong>";
            title.align = "left";
            title.fontSize = 15;
            title.marginBottom = 30;
            title.fill = am4core.color("#404e67");

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";
            categoryAxis.renderer.labels.template.wrap = true; 
            categoryAxis.renderer.labels.template.maxWidth = 130;
            categoryAxis.renderer.labels.template.textAlign = "middle";
            categoryAxis.renderer.labels.template.fontSize = 10;

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "";
            valueAxis.title.fontWeight = "bold";
            valueAxis.min = 1; 
            valueAxis.max = 4; 
            valueAxis.strictMinMax = true;
            valueAxis.renderer.minGridDistance = 20;
            valueAxis.renderer.grid.template.disabled = false;

            // Configura los incrementos del eje Y
            valueAxis.renderer.grid.template.stroke = am4core.color("#000");
            valueAxis.renderer.grid.template.strokeOpacity = 0.2;
            valueAxis.renderer.grid.template.strokeWidth = 1;
            valueAxis.renderer.step = 0.5; // Incrementos de 0.5

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX}: [bold]{valueY}[/]";
            series.columns.template.fillOpacity = .8;
            series.columns.template.width = 40;

            var columnTemplate = series.columns.template;
            columnTemplate.strokeWidth = 2;
            columnTemplate.strokeOpacity = 1;
            columnTemplate.stroke = am4core.color("#FFFFFF");

            columnTemplate.adapter.add("fill", function(fill, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            columnTemplate.adapter.add("stroke", function(stroke, target) {
                return chart.colors.getIndex(target.dataItem.index);
            })

            var labelBullet = series.bullets.push(new am4charts.LabelBullet());
            labelBullet.label.text = "{valueY}";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.horizontalCenter = "middle";
            labelBullet.label.verticalCenter = "middle";
            labelBullet.label.fontSize = 13;
            labelBullet.label.dy = 15;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.hideOversized = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;

            this.agregardivblanco("grafica_dim10");
        },
        agregardivblanco(id){
            var div = document.getElementById(id);
            div.style.position = "relative";
            var divBlanco = document.createElement("div");
            divBlanco.style.width = "77px";
            divBlanco.style.height = "31px";
            divBlanco.style.backgroundColor = "white";
            divBlanco.style.position = "absolute";
            divBlanco.style.left = "0";
            divBlanco.style.bottom = "-2px";
            div.appendChild(divBlanco);
        },
        generarPDF(){
            this.loading = true;
            setTimeout(()=>{
                $("#area_informe").printThis({
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
</style>