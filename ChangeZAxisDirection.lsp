(defun c:ZA ()
  
  ; Prompt the user to select a Z-Axis Direction
  (setq zAxisDirection (getpoint "\nSelect a Z-Axis Direction: "))
  
  ; Select the Z-axis
  (command "_UCS" "_ZAxis" zAxisDirection)
)
(princ "\nChange Z-Axis Direction Loaded | Use command ZA to run.")
; Written by Patrick Marschlowitz