module PeriodicTable exposing (view)

import ChemElements exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (style)


baseSize =
    30


view : Element msg
view =
    column
        [ padding 5
        , spacing baseSize
        ]
        [ row
            []
            [ el [ alignBottom ] (toColumn (group 1))
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
        , column [ alignRight ]
            [ toRow lanthanides
            , toRow actinides
            ]
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


tm : Int -> List ElementData
tm x =
    List.filter
        (\el ->
            el.period
                == x
                && (case el.group of
                        Group groupNo ->
                            groupNo >= 3 && groupNo <= 12

                        _ ->
                            False
                   )
        )
        elementData


lanthanides : List ElementData
lanthanides =
    List.filter
        (\el ->
            case el.group of
                La _ ->
                    True

                _ ->
                    False
        )
        elementData


actinides : List ElementData
actinides =
    List.filter
        (\el ->
            case el.group of
                Ac _ ->
                    True

                _ ->
                    False
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

        borderBottom =
            if eData.atomicNumber >= 87 || eData.atomicNumber == 39 then
                1

            else
                0

        borderRight =
            case eData.group of
                Group 18 ->
                    1

                Group 2 ->
                    if eData.atomicNumber /= 20 && eData.atomicNumber /= 38 then
                        1

                    else
                        0

                _ ->
                    if eData.atomicNumber == 1 || eData.atomicNumber == 71 || eData.atomicNumber == 103 then
                        1

                    else
                        0
    in
    el
        [ Background.color bgColor
        , Border.widthEach { bottom = borderBottom, left = 1, right = borderRight, top = 1 }

        --, Border.width 1
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
