module ProjectSelection.View where

import Prelude hiding (div)

import Pux.Html
import Pux.Html.Attributes
import Pux.Html.Events
import Model
import Messages (Msg(..), LoginMsg(..))
import Data.Array

view :: Model -> Html Msg
view model =
  div [ className "valign-wrapper"]
      [ div [ className "valign center-block" ]
            [ h1 [ className "center-align" ] [ text "Bon Hiato - Project selection" ]
            , a[className "dropdown-button btn", attr "data-activates" "projectDropdown"][]
            , ul [id_ "projectDropdown", className "dropdown-content"]
              [ li
                  []
                  [ a
                      [href "#"]
                      [text "Proyecto1"]
                  ]
              ]
           ]
      ]