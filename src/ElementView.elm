module ElementView exposing (view1)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


baseSize =
    300


view1 : Element msg
view1 =
    el
        [ Background.color (rgb255 255 200 255)
        , centerX
        , height (px baseSize)
        ]
        (el
            [ Font.size (round (baseSize * 2))
            , Font.wordSpacing 0.0
            , Font.letterSpacing 0.0
            , padding 0
            , Border.width 0
            ]
            (text "Ng")
        )
