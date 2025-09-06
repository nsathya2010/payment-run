namespace com.pmr.db;

using {
  cuid,
  managed
} from '@sap/cds/common';


entity Jobs : cuid, managed {
  // @Common.FieldControl: #ReadOnly
  Job         : Integer;

  // @Common.FieldControl: #ReadOnly
  Title       : String;
  Status      : JobStatus;
  _StatusText : Association to one JobStatusText
                  on _StatusText.Status = Status;
  _Items      : Composition of many OpenItems
                  on _Items.Job = $self;
}

entity OpenItems : cuid, managed {
  Vendor               : String;
  Quantity             : Integer;
  CriticalityIndicator : Integer;
  PerformReversal      : Boolean;
  PerformClear         : Boolean;
  PerformChange        : Boolean;
  Job                  : Association to Jobs;
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
