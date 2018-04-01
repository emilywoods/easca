module Add exposing (..)


new lhs rhs =
    { left = lhs
    , right = rhs
    }


to_s lhs rhs =
    toString lhs ++ " + " ++ toString rhs


is_reducible =
    True
