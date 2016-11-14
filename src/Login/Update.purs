module Login.Update (update) where

import Prelude

import Model
import Messages

update :: Model -> LoginMsg -> Model
update model PerformLogin = performLogin model
update model (WriteUser user) = model { username = user }
update model (WritePass pass) = model { password = pass }

performLogin :: Model -> Model
performLogin model =
    case model.username of
        "productOwner" ->
            model { loggedAs = ProductOwner "Pepe el PO"
                  , currentLocation = ProjectScreen
                  }

        "scrumMaster" ->
            model { loggedAs = ScrumMaster "Sancho el SM"
                  , currentLocation = ProjectScreen
                  }

        "developer" ->
            model { loggedAs = Developer "Dario el D"
                  , currentLocation = ProjectScreen 
                  }

        _ ->
            model { currentError = "Use productOwner, scrumMaster or developer as username for logging in" }
