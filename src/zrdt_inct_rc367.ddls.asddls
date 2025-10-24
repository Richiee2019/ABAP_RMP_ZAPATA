@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Incidencias : Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZRDT_INCT_RC367
  as select from zdt_inct_rmpc367
  
  composition [0..*] of ZEDT_INCT_H_RC367 as _historial 
  association [0..1] to ZEDT_STATUS_RC367 as _ststus    on _ststus.StatusCode     = $projection.Status
  association [0..1] to ZEDT_PRIOTY_RC367 as _priority  on _priority.PriorityCode = $projection.Priority

{
  key inc_uuid              as IncUuid,
      incident_id           as IncidentId,
      title                 as Title,
      description           as Description,
      status                as Status,
      priority              as Priority,
      creation_date         as CreationDate,
      changed_date          as ChangedDate,
      @Semantics.user.createdBy: true
      local_created_by      as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at      as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by as LocalLastChangedBy,
      // Local Etag Semiilla que despues de utiliza 
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at as LocalLastChangedAt,
      //Total Etag
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at       as LastChangedAt,
//      _association_name // Make association public
      _historial,
      _ststus,
      _priority
}
