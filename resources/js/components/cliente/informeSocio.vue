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
            
            <div v-if="loading2 == false" id="area_informe" class="card-content" style="padding: 50px 140px 110px 110px; margin-right: 70px">
                <h3 style="font-weight: bold">Informe sociodemográfico - ({{data_informe.empresa.nombre}})</h3>
                <hr>
                <div style="text-align: center">
                    <br><br>
                    <h4 style="width: 100%; text-align: left">De un total de <strong> {{total_personas}}  </strong> Empleados que respondieron el test, se tiene que: </h4>
                    <br><br>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (sexo)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_sexo" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (grupo de edad)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_edad" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (nivel de educación)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_nivel_educacion" style="height: 400px"></div>
                        <br><br>
                    </div>
                    <div>
                        <br>
                        <h3>
                            <strong>Población distribuida por <br> (estado civil)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_estado_civil" style="height: 400px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (Tiempo que lleva en el cargo)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_tiempo_cargo" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (Tiempo de antigüedad en la entidad)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_tiempo_antiguedad" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div class="pagina-salto"></div>
                    <div>
                        <br>
                        <h3>
                            <strong>Población distribuida por <br> (salario)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_salario" style="height: 400px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (estrato socioeconómico)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_estrato" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (Ciudad donde Trabaja)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_ciudad" style="height: 300px"></div>
                        <br><br>
                    </div>
                    <div class="pagina-salto"></div>
                    <br>
                    <div>
                        <h3>
                            <strong>Población distribuida por <br> (Área o Departamento donde labora)</strong> 
                        </h3>
                        <br>
                        <div id="grafica_area" style="height: 300px"></div>
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
            data_informe: {},
            id_empresa: null,
            chart_sexo: null,
            total_personas: 0
        }
    },
    mounted() {
        this.id_empresa = this.$route.params.id;
        this.consultarDatosInformeSocio();
    },
    methods: {
        async consultarDatosInformeSocio(){
            this.loading = true;
            this.loading2 = true;
            await clienteService.consultarDatosInformeSocio(this.id_empresa).then(respuesta => {
                this.data_informe = respuesta.data;
                this.loading = false;
                this.loading2 = false;
                setTimeout(()=>{
                    this.generarGraficoSexo();
                    this.generarGraficoEdad();
                    this.generarGraficoEducacion();
                    this.generarGraficoEstadoCivil();
                    this.generarGraficoTiempoCargo();
                    this.generarGraficoTiempoAntiguedad();
                    this.generarGraficoSalario();
                    this.generarGraficoEstrato();
                    this.generarGraficoCiudad();
                    this.generarGraficoArea();
                }, 500)
            });
        },
        generarGraficoSexo() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#47cf73")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);
            var chart = am4core.create("grafica_sexo", am4charts.PieChart3D);
            this.total_personas = this.data_informe.por_sexo[0].total + this.data_informe.por_sexo[1].total;
            // Add data
            chart.data = [
                {
                    "country": this.data_informe.por_sexo[0].sexo,
                    "litres": this.data_informe.por_sexo[0].total,
                },
                {
                    "country": this.data_informe.por_sexo[1].sexo,
                    "litres": this.data_informe.por_sexo[1].total,
                }
            ];

            var pieSeries = chart.series.push(new am4charts.PieSeries3D());
            pieSeries.dataFields.value = "litres";
            pieSeries.dataFields.category = "country";
            pieSeries.slices.template.stroke = am4core.color("#fff");
            pieSeries.slices.template.strokeOpacity = 1;

            pieSeries.hiddenState.properties.opacity = 1;
            pieSeries.hiddenState.properties.endAngle = -90;
            pieSeries.hiddenState.properties.startAngle = -90;

            chart.hiddenState.properties.radius = am4core.percent(0);

            this.chart_sexo = chart;
        },
        generarGraficoEdad() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_edad', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_informe.por_edad.forEach(element => {
                chart.data.push({
                    country: element.edad + " Años",
                    visits: Math.floor(((element.total / this.total_personas) * 100) * 100) / 100,
                });
            });

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "# de Empleados";
            valueAxis.title.fontWeight = "bold";

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX} Años: [bold]{valueY}[/]";
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
            labelBullet.label.text = "{valueY}%";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.dy = 15;
            labelBullet.label.dx = 18;
            labelBullet.label.fontSize = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.width = 70;
            labelBullet.label.truncate = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;
        },
        generarGraficoEducacion() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#ff7588")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_nivel_educacion', am4charts.XYChart3D);

            chart.data = [];

            this.data_informe.por_nivel_educacion.forEach(element => {
                chart.data.push({
                    country: element.nivel_educacion,
                    visits: Math.floor(((element.total / this.total_personas) * 100) * 100) / 100,
                });
            });

            // Create axes
            let categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.inversed = true; // Invierte el eje para hacerlo horizontal
            categoryAxis.renderer.grid.template.location = 0;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.fontSize = 12;

            let valueAxis = chart.xAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "# de Empleados";
            valueAxis.title.fontWeight = "bold";

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueX = "visits"; // Use valueX en lugar de valueY
            series.dataFields.categoryY = "country"; // Use categoryY en lugar de categoryX
            series.name = "Visits";
            series.tooltipText = "{categoryY} Años: [bold]{valueX}[/]";
            series.columns.template.strokeWidth = 2;
            series.columns.template.strokeOpacity = 1;
            series.columns.template.stroke = am4core.color("#FFFFFF");
            series.columns.template.fillOpacity = 0.8;
            series.columns.template.maxHeight = 40;

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
            labelBullet.label.text = "{valueX}%";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.fontSize = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.width = 70;
            labelBullet.label.dy = -7;
            labelBullet.label.dx = 38;
            labelBullet.label.truncate = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;
        },
        generarGraficoEstadoCivil() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#ff7588")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_estado_civil', am4charts.XYChart3D);

            chart.data = [];

            this.data_informe.por_estado_civil.forEach(element => {
                chart.data.push({
                    country: element.estado_civil,
                    visits: Math.floor(((element.total / this.total_personas) * 100) * 100) / 100,
                });
            });

            // Create axes
            let categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.inversed = true; // Invierte el eje para hacerlo horizontal
            categoryAxis.renderer.grid.template.location = 0;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.fontSize = 12;
            categoryAxis.renderer.labels.template.wrap = true; // Permite que las etiquetas se envuelvan en múltiples líneas
            categoryAxis.renderer.labels.template.maxWidth = 120;

            let valueAxis = chart.xAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "# de Empleados";
            valueAxis.title.fontWeight = "bold";

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueX = "visits"; // Use valueX en lugar de valueY
            series.dataFields.categoryY = "country"; // Use categoryY en lugar de categoryX
            series.name = "Visits";
            series.tooltipText = "{categoryY} Años: [bold]{valueX}[/]";
            series.columns.template.strokeWidth = 2;
            series.columns.template.strokeOpacity = 1;
            series.columns.template.stroke = am4core.color("#FFFFFF");
            series.columns.template.fillOpacity = 0.8;
            series.columns.template.maxHeight = 40;

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
            labelBullet.label.text = "{valueX}%";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.fontSize = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.width = 70;
            labelBullet.label.dy = -7;
            labelBullet.label.dx = 38;
            labelBullet.label.truncate = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;
        },
        generarGraficoTiempoCargo() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#47cf73")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);
            var chart = am4core.create("grafica_tiempo_cargo", am4charts.PieChart3D);
            // Add data
            chart.data = [];

            
            this.data_informe.por_tiempo_cargo.forEach(element => {
                chart.data.push({
                    country: element.tiempo_cargo,
                    litres: element.total,
                });
            });

            var pieSeries = chart.series.push(new am4charts.PieSeries3D());
            pieSeries.dataFields.value = "litres";
            pieSeries.dataFields.category = "country";
            pieSeries.slices.template.stroke = am4core.color("#fff");
            pieSeries.slices.template.strokeOpacity = 1;

            pieSeries.hiddenState.properties.opacity = 1;
            pieSeries.hiddenState.properties.endAngle = -90;
            pieSeries.hiddenState.properties.startAngle = -90;

            chart.hiddenState.properties.radius = am4core.percent(0);
        },
        generarGraficoTiempoAntiguedad() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#47cf73")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);
            var chart = am4core.create("grafica_tiempo_antiguedad", am4charts.PieChart3D);
            // Add data
            chart.data = [];

            
            this.data_informe.por_tiempo_antiguedad.forEach(element => {
                chart.data.push({
                    country: element.tiempo_entidad,
                    litres: element.total,
                });
            });

            var pieSeries = chart.series.push(new am4charts.PieSeries3D());
            pieSeries.dataFields.value = "litres";
            pieSeries.dataFields.category = "country";
            pieSeries.slices.template.stroke = am4core.color("#fff");
            pieSeries.slices.template.strokeOpacity = 1;

            pieSeries.hiddenState.properties.opacity = 1;
            pieSeries.hiddenState.properties.endAngle = -90;
            pieSeries.hiddenState.properties.startAngle = -90;

            chart.hiddenState.properties.radius = am4core.percent(0);
        },
        generarGraficoSalario() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#ff7588")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_salario', am4charts.XYChart3D);

            chart.data = [];

            this.data_informe.por_salario.forEach(element => {
                chart.data.push({
                    country: element.salario_actual,
                    visits: Math.floor(((element.total / this.total_personas) * 100) * 100) / 100,
                });
            });

            // Create axes
            let categoryAxis = chart.yAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.inversed = true; // Invierte el eje para hacerlo horizontal
            categoryAxis.renderer.grid.template.location = 0;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.fontSize = 12;
            categoryAxis.renderer.labels.template.wrap = true; // Permite que las etiquetas se envuelvan en múltiples líneas
            categoryAxis.renderer.labels.template.maxWidth = 120;

            let valueAxis = chart.xAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "# de Empleados";
            valueAxis.title.fontWeight = "bold";

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueX = "visits"; // Use valueX en lugar de valueY
            series.dataFields.categoryY = "country"; // Use categoryY en lugar de categoryX
            series.name = "Visits";
            series.tooltipText = "{categoryY} Años: [bold]{valueX}[/]";
            series.columns.template.strokeWidth = 2;
            series.columns.template.strokeOpacity = 1;
            series.columns.template.stroke = am4core.color("#FFFFFF");
            series.columns.template.fillOpacity = 0.8;
            series.columns.template.maxHeight = 40;
            

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
            labelBullet.label.text = "{valueX}%";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.fontSize = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.width = 70;
            labelBullet.label.dy = -7;
            labelBullet.label.dx = 38;
            labelBullet.label.truncate = false;

            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;
        },
        generarGraficoEstrato() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#63b5f7")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);

            var chart = am4core.create('grafica_estrato', am4charts.XYChart3D);
        
            chart.data = [];

            this.data_informe.por_estrato.forEach(element => {
                chart.data.push({
                    country: element.estrato,
                    visits: Math.floor(((element.total / this.total_personas) * 100) * 100) / 100,
                });
            });

            // Create axes
            let categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
            categoryAxis.dataFields.category = "country";
            categoryAxis.renderer.labels.template.hideOversized = false;
            categoryAxis.renderer.minGridDistance = 20;
            categoryAxis.renderer.labels.template.horizontalCenter = "middle";
            categoryAxis.renderer.labels.template.verticalCenter = "middle";
            categoryAxis.tooltip.label.horizontalCenter = "middle";
            categoryAxis.tooltip.label.verticalCenter = "middle";

            let valueAxis = chart.yAxes.push(new am4charts.ValueAxis());
            valueAxis.title.text = "# de Empleados";
            valueAxis.title.fontWeight = "bold";

            // Create series
            var series = chart.series.push(new am4charts.ColumnSeries3D());
            series.dataFields.valueY = "visits";
            series.dataFields.categoryX = "country";
            series.name = "Visits";
            series.tooltipText = "{categoryX} Años: [bold]{valueY}[/]";
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
            labelBullet.label.text = "{valueY}%";
            labelBullet.label.fill = am4core.color("#000000");
            labelBullet.label.dy = 15;
            labelBullet.label.dx = 18;
            labelBullet.label.fontSize = 10;
            labelBullet.label.fontWeight = "bold";
            labelBullet.label.width = 70;
            labelBullet.label.truncate = false;


            chart.cursor = new am4charts.XYCursor();
            chart.cursor.lineX.strokeOpacity = 0;
            chart.cursor.lineY.strokeOpacity = 0;
        },
        generarGraficoCiudad() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#47cf73")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);
            var chart = am4core.create("grafica_ciudad", am4charts.PieChart3D);
            // Add data
            chart.data = [];

            
            this.data_informe.por_ciudad.forEach(element => {
                chart.data.push({
                    country: element.ciudad,
                    litres: element.total,
                });
            });

            var pieSeries = chart.series.push(new am4charts.PieSeries3D());
            pieSeries.dataFields.value = "litres";
            pieSeries.dataFields.category = "country";
            pieSeries.slices.template.stroke = am4core.color("#fff");
            pieSeries.slices.template.strokeOpacity = 1;

            pieSeries.hiddenState.properties.opacity = 1;
            pieSeries.hiddenState.properties.endAngle = -90;
            pieSeries.hiddenState.properties.startAngle = -90;

            chart.hiddenState.properties.radius = am4core.percent(0);
        },
        generarGraficoArea() {
            function am4themes_myTheme(target) {
                if (target instanceof am4core.ColorSet) {
                    target.list = [
                    am4core.color("#47cf73")
                    ];
                }
            }
            am4core.useTheme(am4themes_myTheme);
            var chart = am4core.create("grafica_area", am4charts.PieChart3D);
            // Add data
            chart.data = [];

            
            this.data_informe.por_area.forEach(element => {
                chart.data.push({
                    country: element.nombre_area,
                    litres: element.total,
                });
            });

            var pieSeries = chart.series.push(new am4charts.PieSeries3D());
            pieSeries.dataFields.value = "litres";
            pieSeries.dataFields.category = "country";
            pieSeries.slices.template.stroke = am4core.color("#fff");
            pieSeries.slices.template.strokeOpacity = 1;

            pieSeries.hiddenState.properties.opacity = 1;
            pieSeries.hiddenState.properties.endAngle = -90;
            pieSeries.hiddenState.properties.startAngle = -90;

            chart.hiddenState.properties.radius = am4core.percent(0);
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
</style>