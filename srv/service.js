const cds = require('@sap/cds');

module.exports = cds.service.impl( async function(){
    const LedgerSrv = await cds.connect.to('API_LEDGER_SRV');
    this.on('READ','Ledgers', async(req) => {
        req.query.where("Ledger <> ''");
        return await LedgerSrv.transaction(req).send({
            query: req.query,
            headers: {
                apikey: process.env.apikey
            }
        })
    })
})