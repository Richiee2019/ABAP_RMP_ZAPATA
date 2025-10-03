@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumo: Incidencia Root'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZCDT_INCT_RC367
  provider contract transactional_query
  as projection on ZRDT_INCT_RC367
{
  key IncUuid,
      IncidentId,
      Title,
      Description,
      @ObjectModel.text.element: [ 'StatusDescrip' ]
      Status,
      _ststus.StatusDescription     as StatusDescrip,
      @ObjectModel.text.element: [ 'PriorityDescrip' ]
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
      _historial,
      _priority,
      _ststus
}
