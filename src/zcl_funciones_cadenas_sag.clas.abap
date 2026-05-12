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

* "Funcion de cadenas de caracteres"
*
* DATA(lv_num) = strlen( '   Daniel' ).
*
*out->write( lv_num ).
*" numofchar()
*
*DATA(lv_num1) = numofchar( '   Daniel' ).
*"No cuenta los espacios en blanco
*
*out->write( lv_num1 ).
*
*DATA lv_var TYPE string VALUE 'experis Experis'.
*
*"Me dice el numero de veces que encuentra la palabra que se escribe
*DATA(lv_num2) = count(  val = lv_var sub = 'experis' ).
*
*out->write( lv_num2 ).
*
*"COUNT_ANY_OF con esta funcion no distingue entre mayusculas y minusculas como el anterior
*
*lv_num2 = count(  val = lv_var sub = 'experis' ).
*
*out->write( lv_num2 ).
*
*"COUNT_ANY_NOT_OF esta cuenta todos los caracteres diferentes a lo escrito
*
*lv_num2 = count(  val = lv_var sub = 'is' ).
*
*out->write( lv_num2 ).
*
*""""""""""""""""""""""""""""""""""""""""""""""""""""
*
*"FIND
*
*lv_var = find(  val = lv_var sub = 'is' ).
*
*out->write( lv_var ).
*"FIND_ANY_OF
*
*lv_var = FIND_ANY_OF(  val = lv_var sub = 'is' ).
*
*out->write( lv_var ).
*
*"FIND_ANY_NOT_OF
*
*lv_var = FIND_ANY_NOT_OF(  val = lv_var sub = 'is' ).
*
*out->write( lv_var ).

"Funciones de procesamiento"

*DATA lv_var TYPE string value 'Hola,este es el curso de ABAP'.
*
*DATA lv_num TYPE i value 5.
*DATA lv_num2 TYPE i VALUE 10.
*DATA lv_resultado TYPE i.
*
*lv_resultado = lv_num2 + lv_num.
*
*out->write( lv_resultado ).
*"out->write( |{ lv_resultado } = { lv_num2 } + { lv_num }|).
*
*"to upper transforma a mayuscula
*
*out->write( |{ lv_var } mayuscula -> { to_upper( lv_var ) }| ).
*
*"to lower transforma a minuscula
*
*out->write( |{ lv_var } minuscula-> { to_lower( lv_var ) }| ).
*
*"reverse
*
*out->write( |{ lv_var } encriptar-> { reverse( lv_var ) }| ).
*
*"shift_left
*
*out->write( |{ lv_var } dezplazar-> { shift_left( val = lv_var places = 5 ) }| ).
*
*"shift_right
*
*out->write( |{ lv_var } dezplazar-> { shift_right( val = lv_var places = 5 ) }| ).
*
*"substring
*
*out->write( |{ lv_var } subtraer-> { substring( val = lv_var off = 9 len = 6 ) }| ).
*
*"substring_from
*
*out->write( |{ lv_var } subtraer-> { substring_from( val = lv_var sub = 'el' ) }| ).
*
*"substring_after
*
*out->write( |{ lv_var } subtraer-> { substring_after( val = lv_var sub = 'el' ) }| ).
*
*"condence
*
*out->write( |{ lv_var } condensar-> { condense( lv_var ) }| ).

""Funciones de contenido
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
DATA : lv_text TYPE string,
       lv_pattern TYPE string,
       lv_pattern2 type string.
       lv_text = 'The employees number is: 123-456-7890 y daniel.elviraruiz@gmail.com'.
       lv_pattern = '\d{3}-\d{3}-\d{4}'.

DATA(lv_number) = match( val = lv_text pcre = lv_pattern occ = 1 ).

out->write( lv_number ).

lv_pattern2 = `\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{ 2, }\b`.
DATA(lv_number2) = match( val = lv_text pcre = lv_pattern2 occ = 1 ).

out->write( lv_number2 ).

if contains(  val = lv_text pcre = lv_pattern2 ).


out->write( lv_number2 ).
else.
endif.


  ENDMETHOD.

ENDCLASS.
