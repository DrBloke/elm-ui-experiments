module Main exposing (main)

import Browser
import Buttons exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import ElementView
import Html exposing (Html)
import IntroView


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { currentView : View }


type View
    = View1
    | View2


init : Model
init =
    { currentView = View2 }


view : Model -> Html Msg
view model =
    let
        mainView =
            case model.currentView of
                View1 ->
                    view1

                View2 ->
                    view2
    in
    Element.layout []
        (column
            [ width fill, spacing 20 ]
            ([ row [ width fill ]
                [ Buttons.myButton "Intro" NoOp ]
             ]
                ++ mainView
            )
        )


view1 =
    [ IntroView.view1
    , IntroView.view2
    , IntroView.view3
    , IntroView.view4
    , IntroView.view5
    ]


view2 =
    [ ElementView.view1 ]


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model
