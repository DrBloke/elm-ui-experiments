module PeriodicTable exposing (view)

import ChemElements exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (style)


baseSize =
    40


view : Element msg
view =
    row
        [ paddingXY 5 0 ]
        [ toColumn (group 1)
        , el [ alignBottom ] (toColumn (group 2))
        , el [ alignBottom ]
            (column []
                [ toRow (tm 4)
                , toRow (tm 5)
                , el [ alignRight ] (toRow (tm 6))
                , el [ alignRight ] (toRow (tm 7))
                ]
            )
        , el [ alignBottom ] (toColumn (group 13))
        , el [ alignBottom ] (toColumn (group 14))
        , el [ alignBottom ] (toColumn (group 15))
        , el [ alignBottom ] (toColumn (group 16))
        , el [ alignBottom ] (toColumn (group 17))
        , el [ alignBottom ] (toColumn (group 18))
        ]


toColumn elements =
    column
        [ centerX
        ]
        (List.map elementTile elements)


toRow elements =
    row
        [ centerX
        ]
        (List.map elementTile elements)


group : Int -> List ElementData
group x =
    List.filter (\el -> el.group == Group x) elementData


tmGroups =
    [ Group 3
    , Group 4
    , Group 5
    , Group 6
    , Group 7
    , Group 8
    , Group 9
    , Group 10
    , Group 11
    , Group 12
    ]


tm : Int -> List ElementData
tm x =
    List.filter
        (\el ->
            el.period
                == x
                && List.member el.group tmGroups
        )
        elementData


elementTile : ElementData -> Element msg
elementTile eData =
    let
        s1 =
            String.fromInt eData.atomicNumber

        s2 =
            eData.symbol

        s3 =
            eData.name

        bgColor =
            if eData.group == Group 5 then
                rgb255 227 228 229

            else
                rgb255 227 228 229
    in
    el
        [ Background.color bgColor

        --, Border.widthEach { bottom = 0, left = 1, right = 0, top = 1 }
        , Border.width 1
        , height (px (round (baseSize * 1.8)))
        , width (px (round (baseSize * 1.7)))
        ]
        (elementView1 s1 s2 s3)


elementView1 : String -> String -> String -> Element msg
elementView1 s1 s2 s3 =
    column
        [ height (px (round (baseSize * 1.64)))
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
        [ centerX
        , Font.size (round baseSize)
        , Font.color (rgb255 59 37 44)
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , Font.bold
        , moveUp (baseSize / 9)
        , htmlAttribute <| style "z-index" "+1"
        ]
        (text symbol)


atomicNumber : String -> Element msg
atomicNumber aNumber =
    el
        [ centerX
        , Font.size (round (baseSize / 3))
        , Font.color (rgb255 143 101 147)
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , moveUp (baseSize / 50)
        , htmlAttribute <| style "z-index" "+2"
        ]
        (text aNumber)


elementName : String -> Element msg
elementName elName =
    el
        [ centerX
        , Font.size (round (baseSize / 4))
        , Font.color (rgb255 143 101 147)
        , Font.family
            [ Font.typeface "Helvetica"
            , Font.sansSerif
            ]
        , moveUp (baseSize / 13)
        ]
        (text elName)
