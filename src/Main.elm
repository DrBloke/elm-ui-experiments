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
import IrregularGrid
import PeriodicTable
import PeriodicTable2


main =
    Browser.sandbox { init = init, update = update, view = view }


type alias Model =
    { currentView : View }


type View
    = View1
    | View2
    | View3
    | View4
    | View5


init : Model
init =
    { currentView = View5 }


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

                View4 ->
                    view4

                View5 ->
                    view5
    in
    Element.layout []
        (column
            [ width fill, spacing 20 ]
            ([ row [ width fill ]
                [ Buttons.myButton "Intro" (ChangeView View1)
                , Buttons.myButton "Font" (ChangeView View2)
                , Buttons.myButton "PT 1" (ChangeView View3)
                , Buttons.myButton "PT 2" (ChangeView View4)
                , Buttons.myButton "Irregular Grid " (ChangeView View5)
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


view4 =
    [ PeriodicTable2.view ]


view5 =
    [ IrregularGrid.view ]


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
