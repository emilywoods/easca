module Parser exposing (..)

import Exp exposing (Exp(..))
import Regex
import String


type TokenType
    = Integer
    | NoMatch


regexInt =
    Regex.regex "\\d+"


parse : String -> List Exp
parse source =
    List.map
        (\token -> parseToken token)
        (tokenize source)


tokenize source =
    String.split " " source


matchHelper : String -> TokenType
matchHelper s =
    if Regex.contains regexInt s then
        Integer
    else
        NoMatch


parseToken : String -> Exp
parseToken string =
    case matchHelper string of
        Integer ->
            Num (String.toInt string |> Result.withDefault 0)

        NoMatch ->
            Num 0
