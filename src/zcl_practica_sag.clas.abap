CLASS zcl_practica_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_practica_sag IMPLEMENTATION.

METHOD if_oo_adt_classrun~main.

TYPES:BEGIN OF: ty_cliente,
            nombre   TYPE string,
            id       TYPE i,
            edad     TYPE i,
            telefono TYPE string,
            correo   TYPE string,
          END OF ty_cliente.
 DATA ls_cliente TYPE ty_cliente .

ls_cliente-correo = 'locura@gmail.com'.
 ls_cliente-id = 50551.
    ls_cliente-telefono = '145365987'.
    out->write( ls_cliente ).

ENDMETHOD.

ENDCLASS.
