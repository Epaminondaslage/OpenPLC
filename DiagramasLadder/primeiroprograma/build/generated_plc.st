PROGRAM primeiroprograma
  VAR
    B00 AT %IX0.0 : BOOL;
    Q0 AT %QX0.0 : BOOL;
  END_VAR

  Q0 := B00;
END_PROGRAM


CONFIGURATION Config0

  RESOURCE Res0 ON PLC
    TASK task0(INTERVAL := T#20ms,PRIORITY := 0);
    PROGRAM instance0 WITH task0 : primeiroprograma;
  END_RESOURCE
END_CONFIGURATION
