namespace com.danfoss.pmr.db;

using {
  cuid,
  managed
} from '@sap/cds/common';


entity Jobs : cuid, managed {
  Job         : Integer;
  Title       : String;
  Status      : JobStatus;
  Description : Association to one JobStatusText
                  on Description.Status = Status;
  _Items      : Composition of many OpenItems
                  on _Items.Job = $self;
}

entity OpenItems : cuid, managed {
  Vendor   : String;
  Quantity : Integer;
  Job      : Association to Jobs;
}

entity JobStatusText {
  key Status : JobStatus;
      Text   : String;
}


type JobStatus : Integer enum {
  Created = 0;
  Running = 1;
  Completed = 2;
  Error = 3;
};
