module MultiplyTests exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Multiply 
import Number

suite : Test
suite =
     describe "The Multiply module"
        [ describe "multiply"
            [ test "It assigns a left and right value" <|
                \_ ->  Expect.equal { left = 2, right = 4 } (Multiply.multiply 2 4 )

            , test "It assigns a left and right floating point value" <|
                \_ ->  Expect.equal { left = 2.0, right = 4.0 } (Multiply.multiply 2.0 4.0 )

            ]
        , describe "to_s" 
            [ test "It assigns a left and right value" <|
                \_ ->  Expect.equal "2 * 4" (Multiply.to_s 2 4 )

            ]
          , describe "reducible"
              [ test "Is reducible" <|
                  \_ ->  Expect.equal True (Multiply.is_reducible)

              ]
              {--, describe "reduce"
              [ test "fully reduced" <|
                  \_ ->  
                    let
                        x =
                            Number.number 2
                        y =
                            Number.number 4
                    in
                        Expect.equal 6 ( Multiply.reduce x y )

              , test "It assigns a left and right value" <|
                \_ ->
                    let
                        x =
                            Number.number 2
                        y =
                            Number.number 4
                    in
                        Expect.equal { left = { value = 2 }, right = { value = 4 } } ( Multiply.multiply x y )
                        --}
        ]
