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
        [ toColumn group1
        , el [ alignBottom ] (toColumn group2)
        , el [ alignBottom ]
            (column []
                [ toRow tm1
                , toRow tm2
                , toRow tm3
                , toRow tm4
                ]
            )
        , el [ alignBottom ] (toColumn group13)
        , el [ alignBottom ] (toColumn group14)
        , el [ alignBottom ] (toColumn group15)
        , el [ alignBottom ] (toColumn group16)
        , el [ alignBottom ] (toColumn group17)
        , el [ alignBottom ] (toColumn group18)
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


group1 =
    List.filter (\el -> el.group == Group 1) elementData


group2 =
    List.filter (\el -> el.group == Group 2) elementData


group13 =
    List.filter (\el -> el.group == Group 13) elementData


group14 =
    List.filter (\el -> el.group == Group 14) elementData


group15 =
    List.filter (\el -> el.group == Group 15) elementData


group16 =
    List.filter (\el -> el.group == Group 16) elementData


group17 =
    List.filter (\el -> el.group == Group 17) elementData


group18 =
    List.filter (\el -> el.group == Group 18) elementData


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


tm1 =
    List.filter
        (\el ->
            el.period
                == 4
                && List.member el.group tmGroups
        )
        elementData


tm2 =
    List.filter
        (\el ->
            el.period
                == 5
                && List.member el.group tmGroups
        )
        elementData


tm3 =
    List.filter
        (\el ->
            el.period
                == 6
                && List.member el.group (La 1 :: tmGroups)
        )
        elementData


tm4 =
    List.filter
        (\el ->
            el.period
                == 7
                && List.member el.group (Ac 1 :: tmGroups)
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
