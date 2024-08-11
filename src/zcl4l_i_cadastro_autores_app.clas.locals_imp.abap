CLASS lhc_ZI_CADASTRO_AUTORES_APP DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_cadastro_autores_app RESULT result.

ENDCLASS.

CLASS lhc_ZI_CADASTRO_AUTORES_APP IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.
