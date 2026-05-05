CLASS zcl_max_sag DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_max_sag IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    DATA lv_edad TYPE i .
*
*
*    DATA lv_persona TYPE string VALUE 'anciano'.
*
*    IF lv_persona  = 'padre'.
*
*      lv_edad = 45.
*    ELSEIF lv_persona = 'hijo'.
*      lv_edad = 2.
*    ELSE.
*      IF lv_persona  = 'adolescente'.
*        lv_edad = 17.
*       elseif  lv_persona = 'anciano'.
*        lv_edad = 70.
*        else.
*        out->write( 'tarifa no contemplada' ).
*      ENDIF.
*    ENDIF.
*
*
*    IF lv_edad < 4.
*
*      out->write( ' entra gratis' ).
*
*    ELSEIF lv_edad >= 4 AND lv_edad <= 18 or lv_edad >= 70.
*
*      out->write( '5 euros ' ).
*
*    ELSE.
*
*      out->write( '10 euros ' ).
*    ENDIF.

DATA: lv_cdvuelo TYPE string VALUE '5454545',
      lv_numplato TYPE i VALUE 20,
      lv_numplaocu TYPE i VALUE 20,
      lv_numplasoli TYPE i VALUE 0.

    IF lv_cdvuelo is initial.
        out->write( 'Código no valido ' ).

      ELSEIF lv_numplasoli <= 0.
        out->write( 'Error en la plazas ' ).

      ELSEIF lv_numplaocu > lv_numplato.
        out->write( 'No se puede solicitar las plazas seleccionadas ' ).
      ELSEif lv_numplato - lv_numplaocu >= lv_numplasoli .
         out->write( 'Gracias por su reserva ' ).
        else.
        out->write( 'No quedan plazas suficientes ' ).

    ENDIF.
       " out->write( 'Gracias por su reserva ' ).
  ENDMETHOD.

ENDCLASS.
