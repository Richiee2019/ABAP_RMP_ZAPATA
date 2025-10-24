@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ayuda Estatus'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #S,
    dataClass: #MASTER
}
@ObjectModel.representativeKey: 'StatusCode'
@ObjectModel.dataCategory: #VALUE_HELP

@Search.searchable: true
@Consumption.ranked: true


define view entity ZVH_STATUS_RC367
  as select from ZMVH_STATUS_RC367
{
      @Search.fuzzinessThreshold: 0.8
      @Search.defaultSearchElement: true
  key StatusCode,
      StatusDescription
}
