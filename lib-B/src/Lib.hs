{-# LANGUAGE TemplateHaskell #-}
module Lib
    ( someFunc
    ) where

import qualified LibA

import Language.Haskell.TH.Syntax

someFunc :: String
someFunc = $( runIO (print LibA.someFunc) >> lift LibA.someFunc )


