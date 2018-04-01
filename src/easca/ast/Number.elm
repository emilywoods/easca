module Number exposing (..)


new val =
    { value = val }


to_s val =
    toString val


is_reducible =
    False


reduce : number -> number
reduce input =
    input
