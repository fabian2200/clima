<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Session;
use App\Http\Controllers\EmailController;

class InformeGeneralDimensionesController extends Controller
{
    public function informeGeneralDimensiones(Request $request){
        $id_empresa = $request->input('id_empresa');

        $respuestas = DB::connection("mysql")->table("respuestas")
        ->where("id_empresa", $id_empresa)
        ->get();

        $numero_respuestas = count($respuestas);

        $dimension1 = 0;
        $dimension2 = 0;
        $dimension3 = 0;
        $dimension4 = 0;
        $dimension5 = 0;
        $dimension6 = 0;
        $dimension7 = 0;
        $dimension8 = 0;
        $dimension9 = 0;
        $dimension10 = 0;

        foreach ($respuestas as $key) {
           $dimension1 += ($key->preg1 + $key->preg11 + $key->preg21 + $key->preg31 + $key->preg41);
           $dimension2 += ($key->preg2 + $key->preg12 + $key->preg22 + $key->preg32 + $key->preg42);
           $dimension3 += ($key->preg3 + $key->preg13 + $key->preg23 + $key->preg33 + $key->preg43);
           $dimension4 += ($key->preg4 + $key->preg14 + $key->preg24 + $key->preg34 + $key->preg44);
           $dimension5 += ($key->preg5 + $key->preg15 + $key->preg25 + $key->preg35 + $key->preg45);
           $dimension6 += ($key->preg6 + $key->preg16 + $key->preg26 + $key->preg36 + $key->preg46);
           $dimension7 += ($key->preg7 + $key->preg17 + $key->preg27 + $key->preg37 + $key->preg47);
           $dimension8 += ($key->preg8 + $key->preg18 + $key->preg28 + $key->preg38 + $key->preg48);
           $dimension9 += ($key->preg9 + $key->preg19 + $key->preg29 + $key->preg39 + $key->preg49);
           $dimension10 += ($key->preg10 + $key->preg20 + $key->preg30 + $key->preg40 + $key->preg50);
        }

        $dim1_promedios = [
            [
                "pregunta" => "Al iniciar este empleo, tuve inducción al cargo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Desarrollo más actividades de las que competen a mi cargo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Las  actividades que realizo están en el marco de mis funciones",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Recibo entrenamiento en los aspectos concernientes a mi cargo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mi jefe inmediato me brinda instrucciones precisas acerca de mis funciones",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim2_promedios = [
            [
                "pregunta" => "Mi jefe inmediato supervisa mis funciones de forma constante",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mi cargo requiere de mayor libertad para tomar decisiones",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Las decisiones que puedo tomar son coherentes con el cargo que desempeño",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Todas las decisiones las debo consultar con el jefe inmediato",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Tomo decisiones que son de mi responsabilidad",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim3_promedios = [
            [
                "pregunta" => "Cuando se comete un error y  el jefe inmediato lo percibe, conversa amablemente para evitar que vuelva a ocurrir",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "MI jefe inmediato reconoce las cosas buenas que hago",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mi jefe inmediato se fija ante todo en mis errores",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mi jefe inmediato me halaga o felicita  verbalmente cuando hago bien mi trabajo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "MI jefe inmediato  busca la manera de  estimularme a realizar mi trabajo lo mejor posible",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim4_promedios = [
            [
                "pregunta" => "Siento temor ante la presencia de mi jefe o algún compañero/a",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "En mi equipo de trabajo se presentan discusiones innecesarias",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Entre los compañeros de trabajo se hacen comentarios negativos del jefe inmediato u otros compañeros",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Se promueve el trato respetuoso entre todos los empleados",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Se hacen comentarios negativos de compañeros de trabajo",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim5_promedios = [
            [
                "pregunta" => "Mis compañeros/as están ocupados cuando los necesito",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Se puede contar con la ayuda de mi jefe inmediato",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Hay voluntad de colaboración  entre los compañeros/as de trabajo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Los empleados cooperan en los eventos que desarrolla la entidad",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Me siento solo/a en este trabajo.",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim6_promedios = [
            [
                "pregunta" => "Las opiniones se pueden expresar sin temor",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Opinar es exponerse a posibles represalias.",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "El jefe inmediato considera que siempre tiene la razón.",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Puedo expresar mis  ideas o sugerencias aunque sean contrarias a las del jefe inmediato",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "A los compañeros/as no les interesa lo que pienso.",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim7_promedios = [
            [
                "pregunta" => "La misión de la entidad es fácil de entender",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Comparto los principios y valores de esta empresa",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Participo en reuniones para definir aspectos relevantes para mi cargo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Las conversaciones de mis compañeros son poco interesantes",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Cuando hay eventos institucionales, los empleados participan activamente",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim8_promedios = [
            [
                "pregunta" => "La entidad ofrece mecanismos de ascenso de acuerdo a los conocimientos y desempeño laboral de sus empleados",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "En la entidad se reconoce y se premia  a los mejores empleados",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "De haber algún evento de integración, sería invitado/a",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "La entidad ofrece mecanismos de capacitación y desarrollo personal a sus empleados",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "La entidad  implementa mecanismos para estimular a sus empleados",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim9_promedios = [
            [
                "pregunta" => "Tengo algunas funciones que no me gustan",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mi empleo en esta entidad me ha brindado satisfacciones",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Mis funciones son acorde a mis conocimientos",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Le recomendaría a un amigo/a, familiar o conocido/a trabajar en esta empresa",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Dispongo del tiempo necesario para cumplir mis funciones",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        $dim10_promedios = [
            [
                "pregunta" => "Sé a dónde debo acudir cuando tengo una dificultad laboral",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Tengo acceso a los comunicados generales de la entidad",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "El jefe inmediato se  asegura de que tenga la  información emitida por la entidad y que compete a mi cargo",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "La entidad nos informa por diferentes medios (carteleras, intranet, internet) sobre aspectos que conciernen a sus empleados",
                "suma_total" => 0,
                "promedio" => 0
            ],
            [
                "pregunta" => "Puedo conversar abierta y sinceramente con mi jefe inmediato sobre hechos que afectan positiva o negativamente a la entidad",
                "suma_total" => 0,
                "promedio" => 0
            ]
        ];

        foreach ($respuestas as $key) {
            $dim1_promedios[0]["suma_total"] += $key->preg1;
            $dim1_promedios[1]["suma_total"] += $key->preg11;
            $dim1_promedios[2]["suma_total"] += $key->preg21;
            $dim1_promedios[3]["suma_total"] += $key->preg31;
            $dim1_promedios[4]["suma_total"] += $key->preg41;

            $dim2_promedios[0]["suma_total"] += $key->preg2;
            $dim2_promedios[1]["suma_total"] += $key->preg12;
            $dim2_promedios[2]["suma_total"] += $key->preg22;
            $dim2_promedios[3]["suma_total"] += $key->preg32;
            $dim2_promedios[4]["suma_total"] += $key->preg42;

            $dim3_promedios[0]["suma_total"] += $key->preg3;
            $dim3_promedios[1]["suma_total"] += $key->preg13;
            $dim3_promedios[2]["suma_total"] += $key->preg23;
            $dim3_promedios[3]["suma_total"] += $key->preg33;
            $dim3_promedios[4]["suma_total"] += $key->preg43;

            $dim4_promedios[0]["suma_total"] += $key->preg4;
            $dim4_promedios[1]["suma_total"] += $key->preg14;
            $dim4_promedios[2]["suma_total"] += $key->preg24;
            $dim4_promedios[3]["suma_total"] += $key->preg34;
            $dim4_promedios[4]["suma_total"] += $key->preg44;

            $dim5_promedios[0]["suma_total"] += $key->preg5;
            $dim5_promedios[1]["suma_total"] += $key->preg15;
            $dim5_promedios[2]["suma_total"] += $key->preg25;
            $dim5_promedios[3]["suma_total"] += $key->preg35;
            $dim5_promedios[4]["suma_total"] += $key->preg45;

            $dim6_promedios[0]["suma_total"] += $key->preg6;
            $dim6_promedios[1]["suma_total"] += $key->preg16;
            $dim6_promedios[2]["suma_total"] += $key->preg26;
            $dim6_promedios[3]["suma_total"] += $key->preg36;
            $dim6_promedios[4]["suma_total"] += $key->preg46;

            $dim7_promedios[0]["suma_total"] += $key->preg7;
            $dim7_promedios[1]["suma_total"] += $key->preg17;
            $dim7_promedios[2]["suma_total"] += $key->preg27;
            $dim7_promedios[3]["suma_total"] += $key->preg37;
            $dim7_promedios[4]["suma_total"] += $key->preg47;

            $dim8_promedios[0]["suma_total"] += $key->preg8;
            $dim8_promedios[1]["suma_total"] += $key->preg18;
            $dim8_promedios[2]["suma_total"] += $key->preg28;
            $dim8_promedios[3]["suma_total"] += $key->preg38;
            $dim8_promedios[4]["suma_total"] += $key->preg48;

            $dim9_promedios[0]["suma_total"] += $key->preg9;
            $dim9_promedios[1]["suma_total"] += $key->preg19;
            $dim9_promedios[2]["suma_total"] += $key->preg29;
            $dim9_promedios[3]["suma_total"] += $key->preg39;
            $dim9_promedios[4]["suma_total"] += $key->preg49;

            $dim10_promedios[0]["suma_total"] += $key->preg10;
            $dim10_promedios[1]["suma_total"] += $key->preg20;
            $dim10_promedios[2]["suma_total"] += $key->preg30;
            $dim10_promedios[3]["suma_total"] += $key->preg40;
            $dim10_promedios[4]["suma_total"] += $key->preg50;
        }

        $dim1_promedios[0]["promedio"] = round(($dim1_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim1_promedios[1]["promedio"] = round(($dim1_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim1_promedios[2]["promedio"] = round(($dim1_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim1_promedios[3]["promedio"] = round(($dim1_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim1_promedios[4]["promedio"] = round(($dim1_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim2_promedios[0]["promedio"] = round(($dim2_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim2_promedios[1]["promedio"] = round(($dim2_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim2_promedios[2]["promedio"] = round(($dim2_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim2_promedios[3]["promedio"] = round(($dim2_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim2_promedios[4]["promedio"] = round(($dim2_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim3_promedios[0]["promedio"] = round(($dim3_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim3_promedios[1]["promedio"] = round(($dim3_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim3_promedios[2]["promedio"] = round(($dim3_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim3_promedios[3]["promedio"] = round(($dim3_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim3_promedios[4]["promedio"] = round(($dim3_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim4_promedios[0]["promedio"] = round(($dim4_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim4_promedios[1]["promedio"] = round(($dim4_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim4_promedios[2]["promedio"] = round(($dim4_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim4_promedios[3]["promedio"] = round(($dim4_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim4_promedios[4]["promedio"] = round(($dim4_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim5_promedios[0]["promedio"] = round(($dim5_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim5_promedios[1]["promedio"] = round(($dim5_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim5_promedios[2]["promedio"] = round(($dim5_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim5_promedios[3]["promedio"] = round(($dim5_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim5_promedios[4]["promedio"] = round(($dim5_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim6_promedios[0]["promedio"] = round(($dim6_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim6_promedios[1]["promedio"] = round(($dim6_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim6_promedios[2]["promedio"] = round(($dim6_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim6_promedios[3]["promedio"] = round(($dim6_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim6_promedios[4]["promedio"] = round(($dim6_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim7_promedios[0]["promedio"] = round(($dim7_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim7_promedios[1]["promedio"] = round(($dim7_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim7_promedios[2]["promedio"] = round(($dim7_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim7_promedios[3]["promedio"] = round(($dim7_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim7_promedios[4]["promedio"] = round(($dim7_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim8_promedios[0]["promedio"] = round(($dim8_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim8_promedios[1]["promedio"] = round(($dim8_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim8_promedios[2]["promedio"] = round(($dim8_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim8_promedios[3]["promedio"] = round(($dim8_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim8_promedios[4]["promedio"] = round(($dim8_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim9_promedios[0]["promedio"] = round(($dim9_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim9_promedios[1]["promedio"] = round(($dim9_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim9_promedios[2]["promedio"] = round(($dim9_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim9_promedios[3]["promedio"] = round(($dim9_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim9_promedios[4]["promedio"] = round(($dim9_promedios[4]["suma_total"] / $numero_respuestas), 2);

        $dim10_promedios[0]["promedio"] = round(($dim10_promedios[0]["suma_total"] / $numero_respuestas), 2);
        $dim10_promedios[1]["promedio"] = round(($dim10_promedios[1]["suma_total"] / $numero_respuestas), 2);
        $dim10_promedios[2]["promedio"] = round(($dim10_promedios[2]["suma_total"] / $numero_respuestas), 2);
        $dim10_promedios[3]["promedio"] = round(($dim10_promedios[3]["suma_total"] / $numero_respuestas), 2);
        $dim10_promedios[4]["promedio"] = round(($dim10_promedios[4]["suma_total"] / $numero_respuestas), 2);

       
        $datos_general = [
            "dim1" => round(($dimension1 / (5 * $numero_respuestas)), 2),
            "dim2" => round(($dimension2 / (5 * $numero_respuestas)), 2),
            "dim3" => round(($dimension3 / (5 * $numero_respuestas)), 2),
            "dim4" => round(($dimension4 / (5 * $numero_respuestas)), 2),
            "dim5" => round(($dimension5 / (5 * $numero_respuestas)), 2),
            "dim6" => round(($dimension6 / (5 * $numero_respuestas)), 2),
            "dim7" => round(($dimension7 / (5 * $numero_respuestas)), 2),
            "dim8" => round(($dimension8 / (5 * $numero_respuestas)), 2),
            "dim9" => round(($dimension9 / (5 * $numero_respuestas)), 2),
            "dim10" => round(($dimension10 / (5 * $numero_respuestas)), 2),
        ];

        $datos = [
            "general" => $datos_general,
            "dim1_promedios" => $dim1_promedios,
            "dim2_promedios" => $dim2_promedios,
            "dim3_promedios" => $dim3_promedios,
            "dim4_promedios" => $dim4_promedios,
            "dim5_promedios" => $dim5_promedios,
            "dim6_promedios" => $dim6_promedios,
            "dim7_promedios" => $dim7_promedios,
            "dim8_promedios" => $dim8_promedios,
            "dim9_promedios" => $dim9_promedios,
            "dim10_promedios" => $dim10_promedios,
        ];

        return response()->json($datos, 200);
    }
}
