import Html.Attributes exposing (..)
import Element exposing (..)
import String
import Html exposing (..)
import Html.Events exposing (..)

type alias Model =
  { heading : String }

type Msg
    = NoOp

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }

init : ( Model, Cmd Msg )
init = ( { heading = "Surrender your Claims" }, Cmd.none )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

-- VIEW

view : Model -> Html Msg
view content =
    div []
    [ h1 [ myStyle ] [ text content.heading ]
    , img [ src "../assets/marvin.png", imgStyle  ] []
    ]

bodyStyle =
  style
        [ ("background-color", "rgb(0, 0, 0)")
        ]

myStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    , ("font-family", "arial")
    , ("background-color", "rgb(33, 33, 33)")
    , ("color", "rgb(255, 255, 255)")
    ]

imgStyle =
    style
        [ ("width", "20%")
        , ("height", "20%")
        , ("padding", "10px 0")
        , ("margin-left", "auto")
        , ("margin-right", "auto")
        , ("display", "block")
        ]
