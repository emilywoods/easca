module ParserTests exposing (..)

import Exp exposing (Exp(..))
import Expect exposing (Expectation)
import Parser exposing (parse)
import Test exposing (..)


suite : Test
suite =
    describe "Tokeniser"
        [ test "It parses an integer" <|
            \_ -> Expect.equal [ Int 4 ] (Parser.parse "4")
        , test "It parses a float" <|
            \_ -> Expect.equal [ Float 4.5 ] (Parser.parse "4.5")
        , test "It parses a single word string" <|
            \_ -> Expect.equal [ String "hello" ] (Parser.parse "hello")
        , test "It parses a multi word string" <|
            \_ -> Expect.equal [ String "hello", String "there" ] (Parser.parse "hello there")
        , test "It parses a multi line string" <|
            \_ -> Expect.equal [ String "hello", String "there" ] (Parser.parse "hello\nthere")
        ]
