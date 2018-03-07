module NumberTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Number 

suite : Test
suite =
    describe "The Number module"
        [ describe "number"
            [ test "It assigns an integer" <|
                \_ ->
                        Expect.equal { value = 2 } (Number.number 2)

            , test "It assigns a float" <|
                \_ ->
                        Expect.equal { value = 2.0 } (Number.number 2.0)
            ],
         describe "to_s" 
            [ test "converts to string" <|
                \_ ->
                        Expect.equal "2" (Number.to_s 2)
            ]
          , describe "reducible"
              [ test "Is reducible" <|
                  \_ ->  Expect.equal False (Number.is_reducible)

              ]
        ]
