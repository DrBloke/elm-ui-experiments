module IrregularGrid exposing (view)

import ChemElements exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html.Attributes exposing (style)
import Set exposing (Set)


baseSize =
    30


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


view : Element msg
view =
    cross
        |> toGrid


toGrid : List { a | coords : ( Int, Int ), content : String } -> Element msg
toGrid data =
    -- TODO sort =
    let
        allX =
            List.range 1 3

        allY =
            List.range 1 3

        styleOrInsertMissingCells y x =
            List.map .content (List.filter (\item -> item.coords == ( x, y )) data)
                |> List.head
                |> Maybe.withDefault ""
                |> text
                |> el
                    [ width (px 30)
                    , height (px 30)
                    , Border.widthEach { bottom = 0, left = 1, right = 0, top = 1 }
                    ]

        toRow n =
            List.map (styleOrInsertMissingCells n) allX
                |> row []
    in
    column [ padding 20 ]
        (List.map (\x -> toRow x) allY)



--
-- Just maxX ->
--     case List.map .y data |> List.maximum of
--         Just maxY ->
--             let
--                 allX =
--                     List.range 1 maxX
--
--                 allY =
