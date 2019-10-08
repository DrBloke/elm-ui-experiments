module Buttons exposing (myButton)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Input as Input


blue =
    rgb255 0 0 238


purple =
    rgb255 240 0 245


myButton buttonText msg =
    Input.button
        [ Background.color blue
        , Border.rounded 5
        , Element.focused
            [ Background.color purple ]
        , paddingXY 10 5
        ]
        { onPress = Just msg
        , label = text buttonText
        }
