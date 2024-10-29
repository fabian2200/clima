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

        @page { margin: 30px 50px; }

        header { position: fixed; top: -20px; left: 0px; right: 0px; background-color: transparent; height: 50px; color: #fbfbfb}
        footer { position: fixed; bottom: -20px; left: 0px; right: 0px; background-color: transparent; height: 50px; color: #fbfbfb}
    </style>
</head>
<body>
    <header>este es un encabezado</header>
    <footer>este es el pie de</footer>
    <main>
        <h1 style="font-weight: bold; color: #009199; font-size: 26px !important">Informe sociodemográfico</h1>
        <h3 style="width: 100%; text-align: left;">De un total de  <strong style="color: #009199;">({{$total_personas}}) Empleados </strong> que respondieron el test, se tiene que: </h3>
        <br>
        <p>Figura 1</p>
        <i>Población distribuida por  sexo</i>
        <br>
        <img src="{{$base1}}"  height="260" alt="">
        
        <br><br>
        <p>Figura 2</p>
        <i>Población distribuida por  edad</i>
        <img src="{{$base2}}"  height="260" width="650" alt="">
        
        <div class="page-break"></div>
        <br>
        <p>Figura 3</p>
        <i>Población distribuida por  nivel de educación</i>
        <br>
        <img src="{{$base3}}"  height="260" width="650" alt="">
        
        <br><br>
        <p>Figura 4</p>
        <i>Población distribuida por  estado civil</i>
        <br>
        <img src="{{$base4}}"  height="260" width="650" alt="">
        
        <br><br>
        <p>Figura 5</p>
        <i>Población distribuida por  tiempo que lleva en el cargo</i>
        <br>
        <img src="{{$base5}}"  height="260" alt="">
        
        <div class="page-break"></div>
        <br>
        <p>Figura 6</p>
        <i>Población distribuida por  tiempo de antigüedad en el cargo</i>
        <br>
        <img src="{{$base6}}"  height="260" alt="">
        
        <br><br>
        <p>Figura 7</p>
        <i>Población distribuida por  salario</i>
        <br>
        <img src="{{$base7}}"  height="260" width="650" alt="">
        
        <br><br>
        <p>Figura 8</p>
        <i>Población distribuida por  estrato socioeconómico</i>
        <br>
        <img src="{{$base8}}"  height="260" width="650" alt="">
        
        <div class="page-break"></div>
        
        <p>Figura 9</p>
        <i>Población distribuida por  ciudad donde trabaja</i>
        <br>
        <img src="{{$base9}}"  height="260" alt="">
        
        <br><br>
        <p>Figura 10</p>
        <i>Población distribuida por  departamento/área</i>
        <br>
        <img src="{{$base10}}"  height="260" alt="">
    </main>
</body>
</html>
