app.service('commonService', function(Data) {

    this.companyDetails=function(){
        return Data.get('companInfo');
    }

    this.companyDetailsUpdate=function(compData){
        return Data.post('updateCompanyPro',{compData:compData});
    }
    
    this.taxslabList=function(){
        return Data.get('gettaxslab');
    }

    this.saveTaxData=function(txdata){
        return Data.post('saveGstTaxData',{txdata:txdata});
    }

    this.getSlabbyId=function(slbid){
        return Data.get('SlabbyId/'+slbid);
    }
    this.deleteSlabs=function(slbid){
        return Data.get('deleteSlabsNow/'+slbid);
    }

    
    this.saveUpData=function(taxesd){
        return Data.post('updatedTaxdtl',{taxesd:taxesd});
    }
    
    this.listAllitems=function(){
        return Data.get('getAllItems');
    }
    
    
    this.getItemsById=function(itemid){
        return Data.get('itembyId/'+itemid);
    }
    this.saveItemData=function(newitesm){
        return Data.post('saveNewItem',{newitesm:newitesm});
    }

    this.saveEdItemData=function(itemsData){
        return Data.post('saveNewEdItem',{itemsData:itemsData});
    }
    this.delItems=function(itemid){
        return Data.get('itemDelete/'+itemid);
    }
    
    
    this.statesList=function(){
        return Data.get('statesListAll');
    }
    
    this.listSuppler=function(){
        return Data.get('getSuppliers');
    }

    this.saveSupData=function(supdetails){
        return Data.post('saveSuprDet',{supdetails:supdetails});
    }
    
    this.delSups=function(supid){
        return Data.get('supDelete/'+supid);
    }
    
    this.myslab=function(supid){
        return Data.get('getSuppliersLab/'+supid);
    }

    
    this.salesSave=function(salesData){
        return Data.post('saveNewaSales',{salesData:salesData});
    }

    this.salesDataList=function(){
        return Data.get('getssalesData');
    }
    

    
});