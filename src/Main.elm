module Main exposing (main, myElement, myRowOfStuff)

import Browser
import Element exposing (Element, alignRight, centerY, el, fill, padding, rgb255, row, spacing, text, width)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { currentView : View }


type View
    = View1


init : Model
init =
    { currentView = View1 }


view : Model -> Html Msg
view model =
    let
        embededView =
            case model.currentView of
                View1 ->
                    view1
    in
    Element.layout []
        embededView


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model


view1 =
    myRowOfStuff


myRowOfStuff : Element msg
myRowOfStuff =
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
        (text "stylish!")
