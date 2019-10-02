module IntroView exposing (view1, view2, view3, view4, view5)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font


view1 : Element msg
view1 =
    el
        [ centerX
        , Background.color (rgb255 240 220 245)
        ]
        (row [ paddingXY 70 20, width fill, spacing 30 ]
            [ myElement
            , myElement
            , myElement
            ]
        )


view2 : Element msg
view2 =
    el
        [ alignRight
        , Background.color (rgb255 240 220 245)
        ]
        (row [ paddingXY 70 20, spacing 30 ]
            [ myElement
            , myElement
            , myElement
            ]
        )


view3 : Element msg
view3 =
    el
        [ centerX
        , width (px 800)
        , Background.color (rgb255 240 220 245)
        ]
        (row [ padding 20, spacing 30 ]
            [ myElement
            , myElement
            , myElement
            ]
        )


view4 : Element msg
view4 =
    el
        [ centerX
        , width (px 800)
        , Background.color (rgb255 240 220 245)
        ]
        (row [ padding 20, spacing 30, alignRight ]
            [ myElement
            , myElement
            , myElement
            ]
        )


view5 : Element msg
view5 =
    row [ Background.color (rgb255 240 220 245), width fill ]
        [ el [ width (fillPortion 2), Background.color (rgb255 240 220 0) ] myElement
        , el [ width (fillPortion 1), Background.color (rgb255 100 220 0) ] myElement
        , el [ width (fillPortion 1), Background.color (rgb255 240 100 0) ] myElement
        ]


view : Element msg
view =
    row [ width fill, centerY, spacing 30 ]
        [ myElement
        , myElement
        , el [ alignRight ] myElement
        ]


myElement : Element msg
myElement =
    el
        [ Background.color (rgb255 240 0 245)
        , Font.color (rgb255 255 255 255)
        , Border.rounded 3
        , padding 30
        ]
        (Element.text "stylish!")
