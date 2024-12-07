namespace ledgerapi;

using { API_LEDGER_SRV as lsrv } from '../srv/external/API_LEDGER_SRV.csn';

entity Ledgers as projection on lsrv.A_Ledger {
    key Ledger,
        IsLeadingLedger,
        LedgerApplication,
        LedgerSubApplication,
        to_Text
}

