module AddTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Add 

suite : Test
suite =
     describe "The Addition module"
        [ describe "add"
            [ test "It assigns a left and right value" <|
                \_ ->  Expect.equal { left = 2, right = 4 } (Add.new 2 4 )

            , test "It assigns a left and right floating point value" <|
                \_ ->  Expect.equal { left = 2.0, right = 4.0 } (Add.new 2.0 4.0 )
            ]
          , describe "to_s"
              [ test "It assigns a left and right value" <|
                  \_ ->  Expect.equal "2 + 4" (Add.to_s 2 4 )

              ]
          , describe "reducible"
              [ test "Is reducible" <|
                  \_ ->  Expect.equal True (Add.is_reducible)

              ]
        ]
