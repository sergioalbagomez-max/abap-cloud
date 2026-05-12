CLASS zcl_funciones_cadenas_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_funciones_cadenas_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

 "Funcion de cadenas de caracteres"

 DATA(lv_num) = strlen( '   Daniel' ).

out->write( lv_num ).
" numofchar()

DATA(lv_num1) = numofchar( '   Daniel' ).
"No cuenta los espacios en blanco

out->write( lv_num1 ).

DATA lv_var TYPE string VALUE 'experis Experis'.

"Me dice el numero de veces que encuentra la palabra que se escribe
DATA(lv_num2) = count(  val = lv_var sub = 'experis' ).

out->write( lv_num2 ).

"COUNT_ANY_OF con esta funcion no distingue entre mayusculas y minusculas como el anterior

lv_num2 = count(  val = lv_var sub = 'experis' ).

out->write( lv_num2 ).

"COUNT_ANY_NOT_OF esta cuenta todos los caracteres diferentes a lo escrito

lv_num2 = count(  val = lv_var sub = 'is' ).

out->write( lv_num2 ).

""""""""""""""""""""""""""""""""""""""""""""""""""""

"FIND

lv_var = find(  val = lv_var sub = 'is' ).

out->write( lv_var ).
"FIND_ANY_OF

lv_var = FIND_ANY_OF(  val = lv_var sub = 'is' ).

out->write( lv_var ).

"FIND_ANY_NOT_OF

lv_var = FIND_ANY_NOT_OF(  val = lv_var sub = 'is' ).

out->write( lv_var ).

"Funciones de procesamiento"





  ENDMETHOD.

ENDCLASS.
