CLASS zcl_if_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_if_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

" la siguiente linea de codigo es una variable de tipo string .
   DATA lv_nombre type string VALUE 'Paco'.
   DATA lv_nombre2 type string VALUE 'Sergio'.


   if lv_nombre = 'Daniel' or lv_nombre = 'Paco'.

   out->write( 'hola daniel o paco' ).

   endif.






*  if lv_nombre = 'Daniel'.
*
*
*    out->write( 'hola, Daniel' ).
*
*    elseif lv_nombre2 = 'Sergio'.
*    out->write( 'Tu eres sergio' ).
*    else.
*    out->write( 'Tu no eres Sergio ni Daniel' ).
*
*  endif.


    out->write( 'fin del programa ' ).

  ENDMETHOD.

ENDCLASS.
