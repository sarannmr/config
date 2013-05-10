import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.ManageHelpers
import XMonad.Hooks.EwmhDesktops
import System.Exit
import Data.Monoid
import XMonad.Util.EZConfig

import qualified XMonad.StackSet as W
import qualified Data.Map as M

myTerminal = "xfce4-terminal"
myBorderWidth = 2
myModMask = mod1Mask
myWorkspaces = ["rowser","tmux","Other stuff","4","5"]
myFocusFollowsMouse = True
myClickJustFocuses = False
myNormalBorderColor  = "#dddddd"
myFocusedBorderColor = "#00ff00"

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $ 
  [
    ((modm,               xK_p			), spawn "xfce4-appfinder")
  , ((modm,               xK_g			), spawn "gnome-terminal")
  , ((modm,               xK_d			), spawn "xfce4-display-settings --minimal")
  , ((modm .|. shiftMask, xK_q			), spawn "xfce4-session-logout")
  , ((modm,               xK_c 			), kill)
     -- Rotate through the available layout algorithms
	, ((modm, 							xK_space	), sendMessage NextLayout)
	, ((modm, 							xK_Tab		), windows W.focusDown)
		-- Resize viewed windows to the correct size
	, ((modm,               xK_n     ), refresh)
	-- Move focus to the next window
	, ((modm,               xK_Tab   ), windows W.focusDown)
	-- Move focus to the next window
	, ((modm,               xK_j     ), windows W.focusDown)
	-- Move focus to the previous window
	, ((modm,               xK_k     ), windows W.focusUp  )
	-- Move focus to the master window
  , ((modm,               xK_m     ), windows W.focusMaster  )
	-- Swap the focused window and the master window
	, ((modm,               xK_Return), windows W.swapMaster)
	-- Restart xmonad
  , ((modm              , xK_q     ), spawn "xmonad --recompile; xmonad --restart")
	] 
	 ++
  --
  -- mod-[1..9], Switch to workspace N
  -- mod-shift-[1..9], Move client to workspace N
  --
  [((m .|. modm, k), windows $ f i)
      | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
      , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
  ++

  --
  -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
  -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
  --
  [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
      | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
      , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]

myManageHook = composeAll
	[   className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
--    , resource  =? "desktop_window" --> doIgnore
--    , resource  =? "kdesktop"       --> doIgnore
  ]

main = xmonad $ additionalKeysP desktopConfig 
		{
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        clickJustFocuses   = myClickJustFocuses,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,

--        manageHook         = myManageHook,
				keys    					 = myKeys <+> keys desktopConfig,
			  handleEventHook 	 = fullscreenEventHook
    } 
		[ 
			("M-<L>", windows W.focusDown ),  
			("M-<R>", windows W.focusUp   ),  
			("M-<D>", windows W.focusDown ), 
			("M-<U>", windows W.focusUp   ) 
		]

