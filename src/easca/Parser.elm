module Parser exposing (parse)

import Exp exposing (Exp(..))
import Regex
import String


type TokenType
    = Integer
    | Fl -- Float
    | Str -- String
    | NoMatch


regexInt =
    Regex.regex "^\\d+$"


regexFl =
    Regex.regex "^\\d+.\\d+$"


regexStr =
    Regex.regex "\\w+"


parse : String -> List Exp
parse source =
    List.map
        (\token -> parseToken token)
        (tokenize source)


tokenize source =
    String.words source


matchHelper : String -> TokenType
matchHelper str =
    if Regex.contains regexInt str then
        Integer
    else if Regex.contains regexFl str then
        Fl
    else if Regex.contains regexStr str then
        Str
    else
        NoMatch


parseToken : String -> Exp
parseToken str =
    case matchHelper str of
        Integer ->
            Int (String.toInt str |> Result.withDefault 0)

        Fl ->
            Float (String.toFloat str |> Result.withDefault 0.0)

        Str ->
            String str

        NoMatch ->
            Int 1
