import Html exposing (Html, Attribute, program, text, div, h1, p)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import String
import Styles

type alias Model =
  { title : String
  , test : String
}

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
init = ( {title = "Surrender your Claims", test = "This is a paragraph!"}, Cmd.none )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

view : Model -> Html Msg
view m =
   div [Styles.packageStyle]
      [ h1 [ Styles.titleStyle] [text m.title]
      , div [ Styles.mainContainerStyle ] [p [][text m.test]]
      ]
