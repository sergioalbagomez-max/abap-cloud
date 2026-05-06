CLASS zcl_structure_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_structure_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

   data lv_var TYPE i VALUE 5.

   TYPES : BEGIN OF ty_persona,
           nombre TYPE string,
           edad TYPE i,
           telefono TYPE string,
           email TYPE string,
           END OF ty_persona.

    data ls_persona type ty_persona.
    data ls_cliente type ty_persona.

    out->write( ls_cliente ).

    ls_cliente-nombre = 'Daniel'.
    ls_cliente-edad = 33.
    ls_cliente-telefono = '+34 125487563'.
    ls_cliente-email = 'federico@gmail.com'.

    ls_persona-nombre = 'Paco'.
    ls_persona-edad = 50.

    out->write( ls_persona ).
    out->write( ls_cliente ).
" Esta estrucutura se crea directamente en la linea 42, con el value de ty_persona
    data(ls_persona2) = value ty_persona( nombre = 'Daniel' edad = 32 email = 'daniel@hotmail.com' telefono = '685635214' ).
" Esta estructura se ha declarado en la linea 26 a l igual que se ha declarado su tipo, por eso no ponemos data y se pone almohadilla
    ls_persona = value #(
    nombre = 'Daniel'
    edad = 33
    telefono = '+34 125487563'
    email = 'federico@gmail.com' ).

""""""""""""""""""""""""""""""""""""""""





  ENDMETHOD.

ENDCLASS.
