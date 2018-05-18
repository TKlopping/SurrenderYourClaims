module Styles exposing (..)

import Html.Attributes exposing (style)

almostBlack = "rgb(80,80,80)"

packageStyle =
  style
    [ ("margin", "40px")
    , ("padding", "0px")
    , ("font-family", "arial")
    , ("color", almostBlack)
    , ("box-shadow", "0px 2px 8px #888888")
    ]

titleStyle =
  style
    [ ("width", "100%")
    , ("height", "40px")
    , ("padding", "30px 0")
    , ("font-size", "2em")
    , ("text-align", "center")
    ]

mainContainerStyle =
  style
    [ ("padding", "20px 20px")
    , ("text-align", "left")
    ]

tableStyle =
  style
    [ ("width", "100%")
    ]

tableRowStyle =
  style
    [ ("height", "1.5em")
    , ("text-align", "center")
    ]

tableTitleRowStyle =
  style
    [ ("height", "1.5em")
    , ("text-align", "center")
    ]

tableTitleCellStyle =
  style
    [("border-bottom", "1pt solid " ++ almostBlack)
    ]
