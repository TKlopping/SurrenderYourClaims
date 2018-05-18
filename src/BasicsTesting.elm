import Html.Attributes exposing (..)
import Element exposing (..)
import String
import Html exposing (..)
import Html.Events exposing (..)

main =
  beginnerProgram { model = "", view = view, update = update }

-- UPDATE

type Msg = NewContent String

update (NewContent content) olderContent = content

-- VIEW

view content =
    div []
    [ h1 [ myStyle ] [ text "Surrender your claims"]
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
