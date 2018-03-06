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
        
        ]
