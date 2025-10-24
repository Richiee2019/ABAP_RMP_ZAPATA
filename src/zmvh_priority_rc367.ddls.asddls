@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo Ayuda Busqueda  Prioridad'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.representativeKey: 'PriorityCode'
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE,
                                      #CDS_MODELING_DATA_SOURCE,
                                      #CDS_MODELING_ASSOCIATION_TARGET ]

@Search.searchable: true
define view entity ZMVH_PRIORITY_RC367 as select from zdt_prioty_rc367
{
          @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
  key priority_code        as PriorityCode,
      priority_description as PriorityDescription
}
