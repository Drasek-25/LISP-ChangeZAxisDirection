; Written by Patrick Marschlowitz 11/22/23
; This function serves to allow  me to change the direction
; of the worlds Z-Axis in a much more effecicient manner than
; autocad has nativly.
(defun c:ZA () 
  (princ "Use command ZA to run. | If nothing is returned when prompted for Z-Axis, UCS will reset to world.")
  ; Prompt the user to select a Z-Axis Direction
  (setq zAxisDirection (getpoint "\nSelect a Z-Axis Direction: "))

  ; Check if the user returned nil
  (if (not zAxisDirection) 
    (progn 
      ; Reset the UCS to World
      (command "_UCS" "_World")
      (princ "UCS reset to World.")
    )
    (progn 
      ; Select the Z-axis
      (command "_UCS" "_ZAxis" zAxisDirection)
      (princ "UCS set to new Z-Axis")
    )
  )
)