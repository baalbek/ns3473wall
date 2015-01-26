
import qualified NS3473.Rebars as R
import qualified NS3473.Concrete as M
import qualified NS3473.Walls as W
import qualified NS3473.Buckling as X

rebar = R.DoubleWallRebars (R.Rebar 12) 40

conc = M.newConc "35"

wall = W.Wall 200 2400 conc rebar W.External 1.0

ic = X.ic wall
