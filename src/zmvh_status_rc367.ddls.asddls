@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo Ayuda Busqueda Estatus'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.representativeKey: 'StatusCode'
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                      #CDS_MODELING_DATA_SOURCE,
                                      #CDS_MODELING_ASSOCIATION_TARGET ]

@Search.searchable: true
define view entity ZMVH_STATUS_RC367
  as select from zdt_status_rc367
{
      @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
  key status_code        as StatusCode,
      status_description as StatusDescription
}
