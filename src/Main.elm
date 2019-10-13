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
import PeriodicTable


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { currentView : View }


type View
    = View1
    | View2
    | View3


init : Model
init =
    { currentView = View3 }


view : Model -> Html Msg
view model =
    let
        mainView =
            case model.currentView of
                View1 ->
                    view1

                View2 ->
                    view2

                View3 ->
                    view3
    in
    Element.layout []
        (column
            [ width fill, spacing 20 ]
            ([ row [ width fill ]
                [ Buttons.myButton "Intro" (ChangeView View1)
                , Buttons.myButton "Font" (ChangeView View2)
                , Buttons.myButton "Periodic Table" (ChangeView View3)
                ]
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


view3 =
    [ PeriodicTable.view ]


type Msg
    = NoOp
    | ChangeView View


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model

        ChangeView newView ->
            { model | currentView = newView }
