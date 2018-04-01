module Env exposing (..)


type alias Env =
    String -> Int


zero : Env
zero =
    \input -> 0



--backslash = lambda
