<!DOCTYPE html>
<html>
<head>
    <title>PDF</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .page-break {
            page-break-before: always;
        }

        p {
            font-weight: 100 !important;
            color: rgb(71, 71, 71);
            margin-bottom: 0 !important;
        }

        strong p {
            color: black;
            font-weight: bold !important;
        }
    </style>
</head>
<body>
    <h2 style="font-weight: bold; color: #009199;">Informe sociodemográfico</h2>
    <hr>
    <div style="text-align: left">
        <h3 style="width: 100%; text-align: left;">De un total de  <strong style="color: #009199;">({{$total_personas}}) Empleados </strong> que respondieron el test, se tiene que: </h3>
        <br><br>
        <strong><p style='margin: 0px;'>Figura 1</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  sexo</i></p>
        <img src="{{$base1}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 2</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  edad</i></p>
        <img src="{{$base2}}"  height="260" alt="">
        <div class="page-break"></div>
        <br>
        <strong><p style='margin: 0px;'>Figura 3</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  nivel de educación</i></p>
        <img src="{{$base3}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 4</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  estado civil</i></p>
        <img src="{{$base4}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 5</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  tiempo que lleva en el cargo</i></p>
        <img src="{{$base5}}"  height="260" alt="">
        <div class="page-break"></div>
        <br>
        <strong><p style='margin: 0px;'>Figura 6</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  tiempo de antigüedad en el cargo</i></p>
        <img src="{{$base6}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 7</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  salario</i></p>
        <img src="{{$base7}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 8</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  estrato socioeconómico</i></p>
        <img src="{{$base8}}"  height="260" alt="">
        <div class="page-break"></div>
        <br>
        <strong><p style='margin: 0px;'>Figura 9</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  ciudad donde trabaja</i></p>
        <img src="{{$base9}}"  height="260" alt="">
        <br><br>
        <strong><p style='margin: 0px;'>Figura 10</p></strong>
        <p style='margin-right: 40px'><i>Población distribuida por  departamento/area</i></p>
        <img src="{{$base10}}"  height="260" alt="">
    </div>
</body>
</html>
