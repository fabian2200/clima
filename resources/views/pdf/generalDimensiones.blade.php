<!DOCTYPE html>
<html>
<head>
    <title>PDF</title>
    <style>
        * {
            font-family: Arial, sans-serif !important;
            font-size: 16px !important;
        }

        .page-break {
            page-break-before: always;
        }

        p {
            font-weight: bold !important;
            margin-bottom: 5px !important;
            font-size: 16px;
            font-family: Arial, sans-serif !important
        }

        i {
            color: #3c3c3d;
            font-size: 16px;
            font-family: Arial, sans-serif !important
        }

        @page { 
            margin-top: 20px !important; 
            margin-left: 50px !important;
            margin-right: 50px !important;
            margin-bottom: 5px !important;
        }

        header { position: fixed; top: -10px; left: 0px; right: 0px; background-color: transparent; height: 50px; color: #fbfbfb}
        footer { position: fixed; bottom: -20px; left: 0px; right: 0px; background-color: transparent; height: 50px; color: #fbfbfb}

    </style>
</head>
<body>
    <header>este es un encabezado</header>
    <footer>este es el pie de</footer>
    <main>
        <h3 style="color: #009199;"><strong>VALORACIÓN DEL CLIMA ORGANIZACIONAL</strong></h3>
        <h4>A continuación se presentan los resultados de la valoración del clima organizacional, de la <strong style="color: #009199;"> (figura 11) </strong> hasta la <strong style="color: #009199;"> (figura 21) </strong> se presentan los promedios de todas las dimensiones y posteriormente, los de cada dimensión y de los aspectos que componen cada una de ellas.</h4>
        
        <br><br>
        <p>Figura 11</p>
        <i>Promedio de la valoración general del clima organizacional por dimensiones</i>
        <br><br>
        <img src="{{$base1}}"   width="625">
        
        <br>
        <p>Figura 12</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Funciones y Entrenamiento</i>
        <br><br>
        <img src="{{$base2}}"   width="625">
        
        <div class="page-break"></div>
        <br>
        <p>Figura 13</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Autonomía</i>
        <br><br>
        <img src="{{$base3}}"   width="625">
        
        <br>
        <p>Figura 14</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Recompensa Directa</i>
        <br><br>
        <img src="{{$base4}}"   width="625">
        
        <br>
        <p>Figura 15</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Relaciones Interpersonales</i>
        <br><br>
        <img src="{{$base5}}"   width="625">
        
        <div class="page-break"></div>
        <br>
        <p>Figura 16</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Cooperación</i>
        <img src="{{$base6}}"   width="625">
        
        <br>
        <p>Figura 17</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Libre Expresión</i>
        <br><br>
        <img src="{{$base7}}"   width="625">
        
        <br>
        <p>Figura 18</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Identidad</i>
        <br><br>
        <img src="{{$base8}}"   width="625">
        
        <div class="page-break"></div>
        <br>
        <p>Figura 19</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Motivación Institucional</i>
        <br><br>
        <img src="{{$base9}}"   width="625">
        
        <br>
        <p>Figura 20</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Satisfacción Laboral</i>
        <br><br>
        <img src="{{$base10}}"   width="625">
        
        <br>
        <p>Figura 21</p>
        <i>Promedio de la valoración de los  aspectos de la dimensión Comunicación</i>
        <br><br>
        <img src="{{$base11}}"   width="625">
    </main>
</body>
</html>
