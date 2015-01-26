{-# LANGUAGE CPP,NamedFieldPuns,RecordWildCards #-}
module NS3473Wall.System where

import Data.Maybe (fromJust)

import Control.Monad.Writer (Writer,runWriter,tell,writer)

import Text.Printf (printf)

import Data.Monoid ((<>))

import Text.Printf (printf)

import qualified NS3473.Common as C
import qualified NS3473.Concrete as M
import qualified NS3473.Rebars as R
import qualified NS3473.Beams as B
import NS3473.DiffList (DiffList,toDiffList,fromDiffList)

type StringDL = DiffList String 

data WallSystem = WallSystem {
                    w      :: Double,  -- ^ Beam width 
                    h      :: Double,  -- ^ Beam height
                    rd     :: Double,  -- ^ Rebar diam  
                    rmnt   :: Int,     -- ^ Rebar amount
                    rlay   :: Int,     -- ^ Number of rebar layers
                    shear  :: Maybe Double, 
                    moment :: Maybe Double
                } deriving Show

runSystem :: WallSystem -> IO ()
runSystem ws =
    printf "System %s\n" (show ws) >>
    return ()
