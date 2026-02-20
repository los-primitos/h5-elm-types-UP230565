module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


getcategoricalGrade : Float -> GradeStatus
getcategoricalGrade number =
    if number < 0 then
        Pending

    else if number >= 7 then
        Approved

    else
        Failed


categoricalGrade : List Float -> List GradeStatus
categoricalGrade collection =
    List.map getcategoricalGrade collection


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"

        Cancelled ->
            "Pedir reembolso"


airportAction : List AirplaneStatus -> List String
airportAction collection =
    List.map airplaneScheduleAction collection
