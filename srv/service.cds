using com.danfoss.pmr.db as db from '../db/schema';

service PaymentRunService @(
  path    : 'PaymentRunService',
  requires: 'User'
) {

  @Capabilities: {
    InsertRestrictions.Insertable: false,
    UpdateRestrictions.Updatable : true,
    DeleteRestrictions.Deletable : false
  }
  entity Jobs          as projection on db.Jobs;

  @Capabilities: {
    InsertRestrictions.Insertable: false,
    UpdateRestrictions.Updatable : true,
    DeleteRestrictions.Deletable : false
  }
  entity OpenItems     as projection on db.OpenItems;

  @readonly
  entity JobStatusText as projection on db.JobStatusText;


  action getOpenVendorItems @(restrict: [{
    grant: '*',
    to   : 'JOBSCHEDULER'
  }])() returns Boolean;


}
