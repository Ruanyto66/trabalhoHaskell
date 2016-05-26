{-# LANGUAGE OverloadedStrings, QuasiQuotes,
             TemplateHaskell #-}

module Utils where
import Import
import Yesod
import Yesod.STatic
import Foundation
import Control.Monad.Logger (runStdoutLoggingT)
import Control.Aplicative
import Data.Text
import Text.Lucius
import Text.Julius


supremaWidget :: Widget
supremaWidget = toWidgetHead [hamlet|

    <script src="https://code.jquery.com/jquery-1.10.2.min.js">
    
|] >> toWidget $(luciusFile "assets/css/css.lucius") >> toWidget $(juliusFile "assets/js/js.julius")


comumWidget :: Widget -> Widget
comumWidget hamletWidget = do
    supremaWidget
    $(whamletFile "modulos/comum/header.hamlet")
    hamletWidget
    $(whamletFile "modulos/comum/footer.hamlet")