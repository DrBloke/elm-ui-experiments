module IrregularGrid exposing (view)

import ChemElements exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (style)
import Maybe.Extra as Maybe
import Set exposing (Set)


baseSize =
    50


smallSquare =
    [ { x = 1, y = 1, content = "1" }
    , { x = 1, y = 2, content = "4" }
    , { x = 1, y = 3, content = "7" }
    , { x = 2, y = 1, content = "2" }
    , { x = 2, y = 2, content = "5" }
    , { x = 2, y = 3, content = "8" }
    , { x = 3, y = 1, content = "3" }
    , { x = 3, y = 2, content = "6" }
    , { x = 3, y = 3, content = "9" }
    ]
        |> List.map (\item -> { coords = ( item.x, item.y ), content = item.content })


cross =
    [ { x = 2, y = 1, content = "1" }
    , { x = 1, y = 2, content = "2" }
    , { x = 2, y = 2, content = "3" }
    , { x = 3, y = 2, content = "4" }
    , { x = 2, y = 3, content = "5" }
    ]
        |> List.map (\item -> { coords = ( item.x, item.y ), content = item.content })


pt =
    ChemElements.elementData
        |> List.map mapChemElements
        |> List.filter (\e -> e.content /= "")


mapChemElements e =
    case e.group of
        Group n ->
            -- if n > 2 then
            --     { coords = ( n - 10, e.period ), content = e.symbol }
            --
            -- else
            { coords = ( n, e.period ), content = e.symbol }

        _ ->
            { coords = ( 0, 0 ), content = "" }


view : Element msg
view =
    cross
        |> toGrid


toGrid : List { a | coords : ( Int, Int ), content : String } -> Element msg
toGrid data =
    -- TODO sort =
    let
        allX =
            List.range 1 (Maybe.withDefault 1 (List.maximum (List.map (\a -> Tuple.first a.coords) data)))

        allY =
            List.range 1 (Maybe.withDefault 1 (List.maximum (List.map (\a -> Tuple.second a.coords) data)))

        styleOrInsertMissingCells y x =
            let
                cellPresent =
                    List.filter (\item -> item.coords == ( x, y )) data
                        |> List.head
                        |> Maybe.isJust

                hasRightNeighbour =
                    List.filter (\item -> item.coords == ( x + 1, y )) data
                        |> List.head
                        |> Maybe.isJust

                hasBelowNeighbour =
                    List.filter (\item -> item.coords == ( x, y + 1 )) data
                        |> List.head
                        |> Maybe.isJust

                styles =
                    { leftBorder =
                        if cellPresent then
                            1

                        else
                            0
                    , topBorder =
                        if cellPresent then
                            1

                        else
                            0
                    , rightBorder =
                        if cellPresent && not hasRightNeighbour then
                            1

                        else
                            0
                    , bottomBorder =
                        if cellPresent && not hasBelowNeighbour then
                            1

                        else
                            0
                    , backgroundColor =
                        if cellPresent then
                            rgb255 100 200 100

                        else
                            rgba 0 0 0 0
                    , cellWidth =
                        if cellPresent && not hasRightNeighbour then
                            px (round (baseSize + 1))

                        else
                            px baseSize
                    , cellHeight =
                        if cellPresent && not hasBelowNeighbour then
                            px (round (baseSize + 1))

                        else if cellPresent && hasBelowNeighbour then
                            px (round (baseSize + 1))

                        else
                            px (round baseSize)

                    -- , paddingTop =
                    --     if cellPresent then
                    --         1
                    --
                    --     else
                    --         0
                    -- , paddingRight =
                    --     if cellPresent && not hasRightNeighbour then
                    --         1
                    --
                    --     else
                    --         0
                    -- , paddingBottom =
                    --     if cellPresent && not hasBelowNeighbour then
                    --         1
                    --
                    --     else
                    --         0
                    -- , paddingLeft =
                    --     if cellPresent then
                    --         1
                    --
                    --     else
                    --         0
                    }

                cellStyles =
                    [ width styles.cellWidth
                    , height styles.cellHeight
                    , padding 0 --Each { top = styles.paddingTop, right = styles.paddingRight, bottom = styles.paddingBottom, left = styles.paddingLeft }
                    , Border.widthEach { bottom = styles.bottomBorder, left = styles.leftBorder, right = styles.rightBorder, top = styles.topBorder }
                    , Background.color styles.backgroundColor
                    ]
            in
            List.map .content (List.filter (\item -> item.coords == ( x, y )) data)
                |> List.head
                |> Maybe.withDefault ""
                |> text
                |> el [ centerX, centerY ]
                |> el cellStyles

        toRow n =
            List.map (styleOrInsertMissingCells n) allX
                |> row
                    []
    in
    column [ padding 10 ]
        (List.map toRow allY)



--
-- Just maxX ->
--     case List.map .y data |> List.maximum of
--         Just maxY ->
--             let
--                 allX =
--                     List.range 1 maxX
--
--                 allY =
