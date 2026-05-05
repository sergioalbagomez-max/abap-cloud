CLASS zcl_do_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_do_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    data lv_num type i value 0.
    data lv_contador type i value 0.
    data lv_v type i.
     data(lv_random) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                    min = 1
                                                    max = 6 )->get_next(  ).

*

  "out->write( lv_cliente ).
   lv_v = 8.

    do lv_v times.

        lv_contador = lv_contador + 1.
        out->write( | esto es el contador {  lv_contador } | ).

        lv_random = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                    min = 1
                                                    max = 6 )->get_next(  ).
        out->write( | esto es el random {  lv_random } | ).

        if lv_random = 5.
          exit.
        ENDIF.


    enddo.



 out->write( 'fin del programa' ).


  ENDMETHOD.

ENDCLASS.
