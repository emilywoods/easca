module NumberTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Number 

suite : Test
suite =
    describe "The Number module"
        [ describe "Number is assigned" 
            [ test "It assigns an integer" <|
                \_ ->
                    let
                        value =
                            2
                    in
                        Expect.equal { value = 2 } (Number.number value)

            , test "It assigns a float" <|
                \_ ->
                    2.0
                        |> Number.number
                        |> Expect.equal { value = 2.0 }

            ]
        ]
