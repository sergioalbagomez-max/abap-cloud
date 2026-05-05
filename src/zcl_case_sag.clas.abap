CLASS zcl_case_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_case_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*DATA : lv_operacion TYPE string VALUE '-',
*       lv_num1 type i value 5,
*       lv_num2 TYPE i value 5,
*       lv_resultado TYPE i.
*
*    case lv_operacion.
*
*        when '-'.
*         lv_resultado = lv_num1 - lv_num2.
*         out->write(  |esto es una resta {  lv_resultado }  asdfad { lv_num1 } | ).
*        when '+'.
*         lv_resultado = lv_num1 + lv_num2.
*         out->write( lv_resultado ).
*        when '*'.
*         lv_resultado = lv_num1 * lv_num2.
*         out->write( lv_resultado ).
*        when '/'.
*         lv_resultado = lv_num1 / lv_num2.
*         out->write( lv_resultado ).
*         when OTHERS.
*         out->write( 'error operacion no contemplada ' ).
*    ENDCASE.

    data(lv_cliente) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                    min = 1
                                                    max = 6 )->get_next(  ).

        case lv_cliente.

        when 1.
            out->write( lv_cliente ).
            out->write( 'compañia del cliente 1' ).
        when 2.
            out->write( lv_cliente ).
            out->write( 'compañia del cliente 2' ).
        when 3.
            out->write( lv_cliente ).
            out->write( 'compañia del cliente 3' ).
        when OTHERS.
            out->write( lv_cliente ).
            out->write( 'compañia del cliente superior al  3' ).

        endcase.

  ENDMETHOD.

ENDCLASS.
