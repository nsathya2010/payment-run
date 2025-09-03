using PaymentRunService as service from '../../srv/service';
annotate service.Jobs with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Job',
                Value : Job,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Title',
                Value : Title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : Status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Open Vendor Items',
            ID : 'OpenVendorItems',
            Target : '_Items/@UI.LineItem#OpenVendorItems',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Job',
            Value : Job,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Title',
            Value : Title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Status',
            Value : Status,
        },
    ],
);

annotate service.OpenItems with @(
    UI.LineItem #OpenVendorItems : [
    ]
);

