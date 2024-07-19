<!DOCTYPE html>
<html>
<head>
    <title>PDF</title>
    <style>
        body {
            font-family: Arial, sans-serif;
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

        h5 {
            font-size: 15px !important;
            color: rgb(65, 64, 64)
        }

        .pagina-salto {
            page-break-after: always;
        }

        h3 {
            font-size: 22px !important;
            color: #009199;
        }
    </style>
</head>
<body>
    <h3 style="color: #009199;"><strong>COMPARACIÓN DE DIMENSIONES</strong></h3>
    <hr>
    <h5>En este aparte se presentan las tablas cruzadas de cada una de las <strong style="color: #009199;"> 10 dimensiones </strong> del clima organizacional por área, sexo, edad, tiempo de antigüedad en el cargo y en la entidad.</h5>
    {!! $contenido !!}
</body>
</html>
