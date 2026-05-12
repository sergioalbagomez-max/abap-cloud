CLASS zcl_tabla_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.




ENDCLASS.



CLASS zcl_tabla_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

  DATA lv_nombre TYPE ZDE_NOMBRE_SAG.
  DATA lv_edad TYPE ZDE_EDAD_SAG.

  lv_edad = 2.

  TYPES : BEGIN OF ty_persona,
           nombre TYPE ZDE_NOMBRE_SAG,
           edad TYPE ZDE_EDAD_SAG,
           telefono TYPE string,
           email TYPE string,
           END OF ty_persona.

   TYPES : BEGIN OF ty_persona2,
           animal TYPE string,
           edad TYPE i,
           telefono TYPE string,
           email TYPE string,
           END OF ty_persona2.

  DATA lt_cliente TYPE TABLE OF ty_persona.
  DATA lt_empleado TYPE TABLE OF ty_persona.
  data ls_cliente type ty_persona.

  DATA lt_animal TYPE TABLE OF ty_persona2.
  DATA ls_animal TYPE ty_persona2.

   ls_cliente-nombre = 'Daniel'.
   ls_cliente-edad = 33.
   ls_cliente-telefono = '+34 125487563'.
   ls_cliente-email = 'federico@gmail.com'.

    insert ls_cliente into table lt_cliente.

    ls_cliente-nombre = 'Pepe'.
    ls_cliente-edad = 54.
    ls_cliente-telefono = '+34 254632587'.
    ls_cliente-email = 'pepe@gmail.com'.

    insert ls_cliente into table lt_cliente.

    ls_cliente-nombre = 'Laura'.
    ls_cliente-edad = 54.
    ls_cliente-telefono = '+34 254632587'.
    ls_cliente-email = 'pepe@gmail.com'.

    insert ls_cliente into lt_cliente index 2." el index fuerza una posición concreta en el registro de una tabla

    ls_cliente-nombre = 'Raul'.
    ls_cliente-edad = 24.
    ls_cliente-telefono = '+34 564123789'.
    ls_cliente-email = 'raul@gmail.com'.

    insert ls_cliente into lt_cliente index 2."Lo empuja hacia abajo

    out->write( lt_cliente ).
    out->write( lt_empleado ).


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Con esta forma no hace falta estructura para introducir datos en una tabla

insert value #( animal = 'perro' edad = 12 telefono = '3333' email = 'perrosa@gmail.com' ) into table lt_animal.
insert value #( animal = 'gato' edad = 25 telefono = '5867' email = 'gator@gmail.com' ) into table lt_animal.
insert value #( animal = 'loro' edad = 5 telefono = '4563' email = 'loros@gmail.com' ) into  lt_animal index 2.

out->write( lt_animal ).
" ESTO DE AQUI ABAJO ESTA TRAMBOLIKO
*data(lt_animal2)   = value ty_persona2(
*      (animal = 'leon' edad = 33)
*      (animal = 'nutria' edad = 12)
*      (animal = 'tigre' edad = 24)
*
*      ).
 loop at lt_animal into ls_animal.

      IF ls_animal-animal = 'perro'.

      out->write( | nombre del animal:{ ls_animal-animal } | ).
      ENDIF.
 endloop.

  ENDMETHOD.

ENDCLASS.
