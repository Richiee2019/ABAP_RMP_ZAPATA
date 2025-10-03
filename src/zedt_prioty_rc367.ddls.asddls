@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entity: Prioridad'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZEDT_PRIOTY_RC367
  as select from zdt_prioty_rc367
{
  key priority_code        as PriorityCode,
      priority_description as PriorityDescription
}
