module Main exposing (main)

import Browser
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html exposing (Html)
import IntroView


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
    Element.layout []
        (column [ width fill, spacing 20 ]
            [ IntroView.view1
            , IntroView.view2
            , IntroView.view3
            , IntroView.view4
            , IntroView.view5
            ]
        )


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model
