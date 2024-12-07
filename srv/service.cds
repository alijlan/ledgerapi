using { ledgerapi } from '../db/schema.cds';

service LedgerSrv {
    entity Ledgers as projection on ledgerapi.Ledgers;
}