module BooleanTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Boolean 

suite : Test
suite =
    describe "The Boolean module"
        [ describe "to_s" 
            [ test "converts to string" <|
                \_ ->
                        Expect.equal "True" (Boolean.to_s True)
            ]
          , describe "reducible"
              [ test "Is reducible" <|
                  \_ ->  Expect.equal False (Boolean.is_reducible)

              ]
        ]
