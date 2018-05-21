import Html exposing (..)
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
init = ( Model "Surrender your Claims"  "This is a paragraph!" , Cmd.none )

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
      , div [ Styles.mainContainerStyle ] [claimTable]
      ]

claimTable : Html Msg
claimTable = table
  [Styles.tableStyle]([tableTitleRow] ++ List.map tableRow testRowData ++ [addClaimRow])

tableTitleRow : Html Msg
tableTitleRow = tr [Styles.tableTitleRowStyle]
 [td[Styles.tableTitleCellStyle][text "Date"]
 ,td[Styles.tableTitleCellStyle][text "Client"]
 ,td[Styles.tableTitleCellStyle][text "Start km"]
 ,td[Styles.tableTitleCellStyle][text "Distance"]
 ,td[Styles.tableTitleCellStyle][text ""]
 ]

type alias RowData =
   { date : String
   , client : String
   , start : String
   , distance : String
 }

testRowData =
  [ RowData "17/05/2018" "Client 1" "130123" "86"
  , RowData "18/05/2018" "Client 1" "130223" "87"
  , RowData "18/05/2018" "Client 1" "130223" "87"
  , RowData "18/05/2018" "Client 1" "130223" "87"
  , RowData "18/05/2018" "Client 1" "130223" "87"
  , RowData "18/05/2018" "Client 1" "130223" "87"
  , RowData "18/05/2018" "Client 1" "130223" "90"
  , RowData "18/05/2018" "Client 3" "130223" "127"]

tableRow : RowData -> Html Msg
tableRow d = tr[Styles.tableRowStyle]
  [td[][text d.date]
  ,td[][text d.client]
  ,td[][text d.start]
  ,td[][text d.distance]
  ,td[][button[Styles.medWidth][text "X"]]
  ]

addClaimRow = tr[]
  [td[][input[Styles.tableInputStyle][]]
  ,td[][input[Styles.tableInputStyle][]]
  ,td[][input[Styles.tableInputStyle][]]
  ,td[][input[Styles.tableInputStyle][]]
  ,td[Styles.medWidth][button[Styles.medWidth][text "Add"]]
  ]







--
