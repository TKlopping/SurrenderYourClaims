module Styles exposing (..)

import Html.Attributes exposing (style)

packageStyle =
  style
    [ ("background-color", "rgb(200,200,200)")
    , ("margin", "0px")
    , ("font-family", "arial")
    ]

titleStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]

mainContainerStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "10px 20px")
    , ("font-size", "1em")
    , ("text-align", "left")
    ]
