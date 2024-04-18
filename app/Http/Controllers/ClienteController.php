<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\File;

use Illuminate\Support\Facades\Session;
use App\Http\Controllers\EmailController;


class ClienteController extends Controller
{
    public function verEmpresas(){
        $idUsuario = Session::get('id');

        $empresas = DB::connection("mysql")->table("empresa")
        ->where("id_cliente", $idUsuario)
        ->orderBy("fecha_creada", "DESC")
        ->get();

        return response()->json($empresas, 200);
    }

    public function datosDashboardCliente(){
        $idUsuario = Session::get('id');

        $empresas = DB::connection("mysql")->table("empresa")
        ->select("empresa.*")
        ->where("empresa.id_cliente", $idUsuario)
        ->count();

        $usuario = DB::connection("mysql")->table("usuario")
        ->where("usuario.id", $idUsuario)
        ->first();

        $datos = [
            "empresas" => $empresas,
            "pines_comprados" => $usuario->pines_comprados,
            "pines_usados" => $usuario->pines_utilizados
        ];
        
        return response()->json($datos, 200);
    }

    public function registrarEmpresa(Request $request){
        $nombre = $request->input('nombre');
        $numero_empleados = $request->input('numero_empleados');
        $areas = $request->input('areas');
        $imagen_propia = $request->input('imagen_propia');
        $idUsuario = Session::get('id');

        $usuario = DB::connection("mysql")->table("usuario")
        ->where("usuario.id", $idUsuario)
        ->first();

        $pines_disponibles = $usuario->pines_comprados - $usuario->pines_utilizados - $usuario->pines_borrados;

        if($pines_disponibles >= $numero_empleados){
            if($imagen_propia == "Si"){
                $logo = $request->file('logo');
                $nombre_logo = time() . '_' . $logo->getClientOriginalName();
            }else{
                $nombre_logo = "default.png";
            }
    
            $datos = [
                'id_cliente' => $idUsuario,
                'nombre' => $nombre,
                'logo' => $nombre_logo,
                'numero_empleados' => $numero_empleados,
                'empleados_responden' => 0,
                'fecha_creada' => date('d-m-Y H:i:s')
            ];
    
            $insertadoID = DB::connection('mysql')->table('empresa')->insertGetId(
                $datos 
            );
    
            if ($insertadoID) {
                if($imagen_propia == "Si"){
                    $logo = $request->file('logo');
                    $nombre_logo = time() . '_' . $logo->getClientOriginalName();
                    $logo->move(public_path('imagenes_empresas'), $nombre_logo);
                }
    
                foreach ($areas as $key) {
                    DB::connection('mysql')->table('empresa_area')->insert(
                        [
                            'id_empresa' => $insertadoID,
                            'nombre_area' => $key
                        ]
                    );
                }

                DB::connection('mysql')->table('usuario')
                ->where("id", $idUsuario)
                ->update([
                    "pines_utilizados" => DB::raw('pines_utilizados + ' . $numero_empleados)
                ]);
                
                return response()->json(["¡Empresa registrada correctamente!", 0], 200);

            }else{
                return response()->json(["¡Ocurrió un error al guardar la empresa, intente nuevamente!", 1], 200);
            }
        }else{
            return response()->json(["¡No cuenta con esa cantidad de pines, actualmente tiene disponibles ".$pines_disponibles." pines!", 1], 200);
        }
    }

    public function disminuirEmpleadosEmpresa(Request $request){
        $idUsuario = Session::get('id');

        $id_empresa = $request->input('id_empresa');
        $numero_disminuir = $request->input('numero_disminuir');

        $insertado = DB::connection('mysql')->table('empresa')
        ->where("id", $id_empresa)
        ->update([
            "numero_empleados" => DB::raw('numero_empleados - ' . $numero_disminuir)
        ]);


        if ($insertado) {
            $insertado2 = DB::connection('mysql')->table('usuario')
            ->where("id", $idUsuario)
            ->update([
                "pines_utilizados" => DB::raw('pines_utilizados - ' . $numero_disminuir)
            ]);

            if ($insertado2) {
                return response()->json(["¡Solicitud procesada con éxito!", 0], 200);
            }else{
                return response()->json(["¡Ocurrió un error al procesar la solicitud, intente nuevamente!", 1], 200);
            }
        }else{
            return response()->json(["¡Ocurrió un error al procesar la solicitud, intente nuevamente!", 1], 200);
        }
    }

    public function aumentarEmpleadosEmpresa(Request $request){
        $idUsuario = Session::get('id');

        $id_empresa = $request->input('id_empresa');
        $numero_aumentar = $request->input('numero_aumentar');

        $insertado = DB::connection('mysql')->table('empresa')
        ->where("id", $id_empresa)
        ->update([
            "numero_empleados" => DB::raw('numero_empleados + ' . $numero_aumentar)
        ]);


        if ($insertado) {
            $insertado2 = DB::connection('mysql')->table('usuario')
            ->where("id", $idUsuario)
            ->update([
                "pines_utilizados" => DB::raw('pines_utilizados + ' . $numero_aumentar)
            ]);

            if ($insertado2) {
                return response()->json(["¡Solicitud procesada con éxito!", 0], 200);
            }else{
                return response()->json(["¡Ocurrió un error al procesar la solicitud, intente nuevamente!", 1], 200);
            }
        }else{
            return response()->json(["¡Ocurrió un error al procesar la solicitud, intente nuevamente!", 1], 200);
        }
    }

    public function editarEmpresa(Request $request){
        $idUsuario = Session::get('id');

        $id_empresa = $request->input('id_empresa');
        $nombre = $request->input('nombre');
        
        
        $insertado = DB::connection('mysql')->table('empresa')
        ->where("id", $id_empresa)
        ->update([
            "nombre" => $nombre,
        ]);

        $imagen_editada_empresa = $request->input('imagen_editada_empresa');

        if($imagen_editada_empresa == "Si"){
            $imagen_editada = $request->file('imagen_editada');
            $nombre_logo = time() . '_' . $imagen_editada->getClientOriginalName();
            $imagen_editada->move(public_path('imagenes_empresas'), $nombre_logo);
        
            $insertado = DB::connection('mysql')->table('empresa')
            ->where("id", $id_empresa)
            ->update([
                "logo" => $nombre_logo,
            ]);
        }
        
        return response()->json(["¡Solicitud procesada con éxito!", 0], 200); 
    }
}