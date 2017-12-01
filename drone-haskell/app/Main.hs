{-# LANGUAGE OverloadedStrings #-}
module Main where

import           Lib
import           Network.Wai
import           Network.Wai.Handler.Warp
import           Servant
import           Servant.API

server :: Server HelloAPI
server = hello :<|> user
    where
        hello = return "Hello world"
        user n a = return $ User n a

app :: Application
app = serve helloApi server

main :: IO ()
main = do
    run 9999 app
