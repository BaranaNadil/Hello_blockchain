use cardano/transaction.{Datum, Redeemer, Transaction, OutputReference}

//Market Validator Module

validator market{
    spend(_d: Option<Datum>, _r: Redeemer, _oref: OutputReference, _tx: Transaction) -> Bool{
        True
    }

    //Sell asserts for fixed price, ADA
    //Seller can remove asserts (Delist)
    //Seller can update listing (Edit)
    //Anyone can buy if they pay the seller (Buy)

    else(_){
        fail
    }

}