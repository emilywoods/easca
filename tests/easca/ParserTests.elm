module ParserTests exposing (..)

import Exp exposing (Exp(..))
import Expect exposing (Expectation)
import Parser exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "Tokeniser"
        [ test "It tokenises a number" <|
            \_ -> Expect.equal [ "4" ] (Parser.tokenize "4")
        , test "It parses a number" <|
            \_ -> Expect.equal [ Num 4 ] (Parser.parse "4")
        ]
