module Parser exposing (parse)

import Exp exposing (Exp(..))
import Regex
import String


type TokenType
    = Integer
    | Fl -- Float
    | NoMatch


regexInt =
    Regex.regex "^\\d+$"


regexFl =
    Regex.regex "^\\d+.\\d+$"


parse : String -> List Exp
parse source =
    List.map
        (\token -> parseToken token)
        (tokenize source)


tokenize source =
    String.split " " source


matchHelper : String -> TokenType
matchHelper str =
    if Regex.contains regexInt str then
        Integer
    else if Regex.contains regexFl str then
        Fl
    else
        NoMatch


parseToken : String -> Exp
parseToken str =
    case matchHelper str of
        Integer ->
            Int (String.toInt str |> Result.withDefault 0)

        Fl ->
            Float (String.toFloat str |> Result.withDefault 0.0)

        NoMatch ->
            Int 1
