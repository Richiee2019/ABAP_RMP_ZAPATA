@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ayuda  Prioridad'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}

@ObjectModel.representativeKey: 'PriorityCode'
@ObjectModel.dataCategory: #VALUE_HELP

@Search.searchable: true
@Consumption.ranked: true


define view entity ZVH_PRIORITY_RC367
  as select from ZMVH_PRIORITY_RC367
{
      @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
      @Search.ranking: #HIGH
  key PriorityCode,
      PriorityDescription
}
