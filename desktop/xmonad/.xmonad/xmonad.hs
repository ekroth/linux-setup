import XMonad
import XMonad.Config.Xfce

import XMonad.Actions.CycleWS
import XMonad.Util.EZConfig(additionalKeys)

import qualified XMonad.Hooks.EwmhDesktops as EWMH

import XMonad.Hooks.ManageDocks(avoidStruts)
import XMonad.Layout.NoBorders(smartBorders)

main = xmonad $ EWMH.ewmh xfceConfig
         { terminal = "xfce4-terminal"
         , modMask = mod4Mask
	 , manageHook = myManageHook <+> manageHook xfceConfig
	 , workspaces = myWorkspaces
	 , handleEventHook = handleEventHook xfceConfig <+> EWMH.fullscreenEventHook
	 , layoutHook = avoidStruts $ smartBorders $ layoutHook xfceConfig 
         } `additionalKeys` myKeys

myWorkspaces = [ "term", "web", "code", "other" ]

myManageHook = composeAll
	[ className =? "Firefox-bin" --> doShift "web"
	, className =? "xfce4-terminal" --> doShift "term"
	, className =? "Thunar" --> doShift "other"
	, (className =? "Firefox" <&&> resource =? "Dialog") --> doFloat ]

myKeys = 
       [ ((mod4Mask,				xK_period),  nextWS)
	,((mod4Mask,			    	xK_comma),   prevWS)
	,((mod4Mask .|. shiftMask, 		xK_period),  shiftToNext >> nextWS)
	,((mod4Mask .|. shiftMask, 		xK_comma),   shiftToPrev >> prevWS) ]
