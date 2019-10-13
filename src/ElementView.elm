module ElementView exposing (view1)

import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (style)


baseSize =
    100


view1 : Element msg
view1 =
    column [ centerX ]
        [ row
            [ Background.color (rgb255 255 200 255)
            , centerX
            , padding 10
            ]
            [ el
                [ Font.size (round baseSize)
                , Font.family
                    [ Font.typeface "Helvetica"
                    , Font.sansSerif
                    ]
                , Border.width 1
                , Background.color (rgb255 255 200 100)
                ]
                (text "Hg")
            , el
                [ Font.size (round baseSize)
                , Font.family
                    [ Font.typeface "Helvetica"
                    , Font.sansSerif
                    ]
                , Border.width 1
                , Background.color (rgb255 255 200 100)
                , paddingEach { top = 0, right = 0, bottom = round (baseSize / 19), left = 0 }
                ]
                (text "Hg")
            , el
                [ Border.width 1
                , Background.color (rgb255 255 200 100)
                , width (px (round (baseSize * 230 / 200)))
                , height (px (round (baseSize * 187 / 200)))
                ]
                (el
                    [ Font.size (round baseSize)
                    , Font.family
                        [ Font.typeface "Helvetica"
                        , Font.sansSerif
                        ]
                    , moveUp (baseSize * 25 / 200)
                    , centerX
                    ]
                    (el [] (text "Hg"))
                )
            ]
        , row
            [ Background.color (rgb255 255 200 255)
            , centerX
            , padding 10
            ]
            [ el
                [ Font.size (round baseSize)
                , Font.family
                    [ Font.typeface "Helvetica"
                    , Font.sansSerif
                    ]
                , Border.width 1
                , Background.color (rgb255 255 200 100)
                ]
                (text "I")
            , el
                [ Font.size (round baseSize)
                , Font.family
                    [ Font.typeface "Helvetica"
                    , Font.sansSerif
                    ]
                , Border.width 1
                , Background.color (rgb255 255 200 100)
                ]
                (text "a")
            , el
                [ Font.size (round baseSize)
                , Font.family
                    [ Font.typeface "Helvetica"
                    , Font.sansSerif
                    ]
                , Border.width 1
                , Background.color (rgb255 255 200 100)
                , paddingEach { top = 0, right = 0, bottom = round (baseSize / 19), left = 0 }
                ]
                (text "I")
            , el
                [ Border.width 1
                , Background.color (rgb255 255 200 100)
                , width (px (round (baseSize * 228 / 200)))
                , height (px (round (baseSize * 187 / 200)))
                ]
                (el
                    [ Font.size (round baseSize)
                    , Font.family
                        [ Font.typeface "Helvetica"
                        , Font.sansSerif
                        ]
                    , moveUp (baseSize * 25 / 200)
                    , centerX
                    ]
                    (el [] (text "I"))
                )
            ]
        , row
            [ Background.color (rgb255 255 200 255)
            , centerX
            , padding 10
            , spacing 20
            ]
            [ elementView1 "80" "Hg" "mercury"
            , elementTile "80" "Hg" "mercury"
            ]
        , row
            [ Background.color (rgb255 255 200 255)
            , centerX
            , padding 10
            , spacing 20
            ]
            [ elementTile "80" "Hg" "mercury"
            , elementTile "80" "Hg" "200.59"
            , elementTile "Hg" "200" "mercury"
            ]
        ]


elementTile : String -> String -> String -> Element msg
elementTile s1 s2 s3 =
    el
        [ Background.color (rgb255 100 200 100)
        , Border.width 1
        , height (px (round (baseSize * 1.8)))
        , width (px (round (baseSize * 1.5)))
        ]
        (elementView1 s1 s2 s3)


elementView1 : String -> String -> String -> Element msg
elementView1 s1 s2 s3 =
    column
        [ Background.color (rgb255 100 200 255)
        , Border.width 1
        , height (px (round (baseSize * 1.64)))
        , centerX
        , centerY
        ]
        [ atomicNumber s1
        , elementSymbol s2
        , elementName s3
        ]


elementSymbol : String -> Element msg
elementSymbol symbol =
    el
        [ Font.size (round baseSize)
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , Font.bold
        , Border.width 1
        , Background.color (rgb255 255 200 100)
        , moveUp (baseSize / 9)
        , htmlAttribute <| style "z-index" "+1"
        ]
        (text symbol)


atomicNumber : String -> Element msg
atomicNumber aNumber =
    el
        [ centerX
        , Font.size (round (baseSize / 3))
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , Border.width 1
        , Background.color (rgb255 255 200 100)
        , htmlAttribute <| style "z-index" "+2"
        ]
        (text aNumber)


elementName : String -> Element msg
elementName elName =
    el
        [ centerX
        , Font.size (round (baseSize / 3))
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , Border.width 1
        , Background.color (rgb255 255 200 100)
        , moveUp (baseSize / 9)
        ]
        (text elName)
