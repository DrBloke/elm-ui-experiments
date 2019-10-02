module Buttons exposing (myButton)

import Element exposing (..)
import Element.Background as Background
import Element.Input as Input


blue =
    rgb255 0 0 238


purple =
    rgb255 240 0 245


myButton msg =
    Input.button
        [ Background.color blue
        , Element.focused
            [ Background.color purple ]
        , paddingXY 10 5
        ]
        { onPress = Just msg
        , label = text "My Button"
        }
