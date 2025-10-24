@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo: Incidencia Root'
@Metadata.ignorePropagatedAnnotations: true
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity ZCDT_INCT_RC367
  provider contract transactional_query
  as projection on ZRDT_INCT_RC367
{
  key IncUuid,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      IncidentId,
      Title,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Search.ranking: #MEDIUM
      Description,
      @ObjectModel.text.element: [ 'StatusDescrip' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
                                         entity: {
                                                   name:    'ZVH_STATUS_RC367',
                                                   element: 'StatusCode'
                                                 }
                                         }]
      Status,
      _ststus.StatusDescription     as StatusDescrip,
      @ObjectModel.text.element: [ 'PriorityDescrip' ]
      @Search.defaultSearchElement: true
      @Consumption.valueHelpDefinition: [{
                                   entity: {
                                             name:    'ZVH_PRIORITY_RC367',
                                             element: 'PriorityCode'
                                           }
                                   }]
      Priority,
      _priority.PriorityDescription as PriorityDescrip,
      CreationDate,
      ChangedDate,
      @Semantics.user.createdBy: true
      LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      LastChangedAt,
      /* Associations */
      _historial : redirected to composition child ZCDT_INCT_H_RC367,
      _priority,
      _ststus
}
