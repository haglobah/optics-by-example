-- |
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE InstanceSigs #-}
-- |

module OpticsImports where

import Control.Lens
import Control.Applicative
import Data.Char
import qualified Data.Map as M
import qualified Data.Set as S
import qualified Data.Text as T

lala :: String -> IO ()
lala s =
  putStrLn (map toUpper s)

fstchar :: Lens' (String, Int) String
fstchar = _1

data Ship =
  Ship { _name :: String
       , _numCrew :: Int
       }
  deriving (Show)

getNumCrew :: Ship -> Int
getNumCrew = _numCrew

setNumCrew :: Ship -> Int -> Ship
setNumCrew ship numCrew =
  ship{_numCrew = numCrew}

numCrew :: Lens' Ship Int
numCrew = lens getNumCrew setNumCrew

