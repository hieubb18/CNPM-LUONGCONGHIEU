 
app.controller('homeCtrl',function($scope){
   
    $scope.options = {
        chart: {
            type: 'pieChart',
            height: 500,
            x: function(d){return d.key;},
            y: function(d){return d.y;},
            showLabels: true,
            duration: 500,
            labelThreshold: 0.01,
            labelSunbeamLayout: true,
            legend: {
                margin: {
                    top: 5,
                    right: 35,
                    bottom: 5,
                    left: 0
                }
            }
        }
    };

    $scope.data = [
        {
            key: "Tháng 1",
            y: 5000000
        },
        {
            key: "Tháng 2",
            y: 2000000
        },
        {
            key: "Tháng 3",
            y: 9000000
        },
        {
            key: "Tháng 4",
            y: 7000000
        },
        {
            key: "Tháng 5",
            y: 4000000
        },
        {
            key: "Tháng 6",
            y: 3000000
        },
        {
            key: "Tháng 7",
            y: 5500000
        },
        {
            key: "Tháng 8",
            y: 2500000
        },
        {
            key: "Tháng 9",
            y: 6500000
        },
         {
            key: "Tháng 10",
            y: 2500000
        },
        {
            key: "Tháng 11",
            y: 7500000
        },
        {
            key: "Tháng 12",
            y: 12500000
        }
        
    ];

 

});


app.controller('authCtrl', function ($scope,$state, $rootScope, Data) {
    //initially set those objects to null to avoid undefined error
   
    $scope.showParticles = true;
    
    $scope.login = function(user){
        console.log(user);
    }

    $scope.login = {};
     $scope.doLogin = function (customer) {
         Data.post('login', {
            customer: customer
        }).then(function (results) {
            
            Data.toast(results);
            if (results.status == "success") {
                $state.go('Sales.Home');
            }else{
                $scope.message = results.message;
            }
        });
    };
    
    $scope.logout = function () {
        Data.get('logout').then(function (results) {
            Data.toast(results);
            $state.go('/');
        });
    }
});

app.controller("mastersCtrl", function($scope, Data,commonService) {
    
   

    $scope.initCompany=function(){
         getCompanyInfo();
    }
     function getCompanyInfo() {
        commonService.companyDetails().then(function(response){
               $scope.company = response.companyProfile;
        })
    }
    $scope.updateCompany=function(compData){
        var compData={compData:compData};
         commonService.companyDetailsUpdate(compData).then(function(response){
             Data.toast(response);
              getCompanyInfo();
        })
    }

    $scope.initTaxList=function(){
        slabList();
    }
    function slabList(){
        commonService.taxslabList().then(function(response){
            $scope.slabs = response.slabProfile;
     })
    }


    $scope.taxRows = [{}];
    $scope.addTaxRow = function() {
        $scope.taxRows.push({});
    };
    $scope.remTaxRow = function(index) {
        $scope.taxRows.splice(index, 1);
        if ($scope.taxRows.length === 0) {
            $scope.taxRows = [];
        }
    }

    $scope.newTax=function(){
        $scope.taxModem=true;
    }
    $scope.mtclose=function(){
        $scope.taxModem=false;
    }

    $scope.saveTaxes=function(txdata){
         var txdata={txdata:txdata};
         commonService.saveTaxData(txdata).then(function(response){
             $scope.taxModem=false;
             $scope.taxes={};
             slabList();
        })
    }

    $scope.editSlab=function(slabid){
        console.log(slabid);
        $scope.taxModemEd=true;
        commonService.getSlabbyId(slabid).then(function(response){
            $scope.eslabsd = response.slabDetails;
            $scope.etaxes = $scope.eslabsd[0];
        });
    }
    $scope.mtedclose=function(){
        $scope.taxModemEd=false;
    }
    $scope.updateTaxes=function(taxesd){
         var taxesd = {taxesd:taxesd};
         commonService.saveUpData(taxesd).then(function(response){
            $scope.taxModemEd=false;
            Data.toast(response);
             slabList();
        })
    }
    $scope.delSlab=function(slabid){
        $scope.slbdelMod=true;
        $scope.txslbid=slabid;
    }
    $scope.txclose=function(){
        $scope.slbdelMod=false;
    }

    $scope.deleteTaxNow=function(slabid){
        commonService.deleteSlabs(slabid).then(function(response){
            $scope.slbdelMod=false;
            Data.toast(response);
             slabList();
        })
    }
    /********* Items Functions ************/
    $scope.loadItems=function(){
        itemsList();
        slabList();
    }
    function itemsList(){
        commonService.listAllitems().then(function(response){
            $scope.allItems = response;
       })
    }
    $scope.newItem = function() {
        $scope.itemModem = true;
    }
    $scope.mclose = function() {
        $scope.itemModem = false;
    }
    $scope.saveItems=function(newitesm){
         var newitesm={newitesm:newitesm};
          commonService.saveItemData(newitesm).then(function(response){
             Data.toast(response);
            itemsList();
            $scope.items={};
            $scope.itemModem = false;
         });
    }

    $scope.editItem=function(itemid){
        $scope.iteditModel=true;
        commonService.getItemsById(itemid).then(function(response){
            $scope.eitems = response.itemByid;
        });
    }
    $scope.meclose=function(){
        $scope.iteditModel=false;
    }
    $scope.saveEdItems=function(itemsData){
        var itemsData={itemsData:itemsData};
        console.log(itemsData);
        commonService.saveEdItemData(itemsData).then(function(response){
            console.log(response);
            Data.toast(response);
            itemsList();
            $scope.iteditModel=false;
        });
    }
    $scope.delItem=function(itemid){
        $scope.delitemid=itemid;
        $scope.itDelModel=true;
    }
    $scope.mdclose=function(){
        $scope.itDelModel=false;
    }
    $scope.deleteItemNow=function(delitem){
         commonService.delItems(delitem).then(function(response){
            console.log(response);
            Data.toast(response);
            itemsList();
            $scope.itDelModel=false;
        });
    }
    
     /*********TEST Suppliers Functions ************/
    $scope.delSup=function(supid){
        $scope.delsupid=supid;
        $scope.supDelModel=true;
    }
    $scope.supclose=function(){
        $scope.supDelModel=false;
    }
    $scope.deleteSupNow=function(delSup){
         commonService.delSups(delSup).then(function(response){
            console.log(response);
            Data.toast(response);
            suppliersList();
            $scope.supDelModel=false;
        });
    }
    
    
    
     /********* Suppliers Functions ************/
    $scope.loadSuppliers=function(){
        suppliersList();
        getStates();
    }
    function getStates(){
        commonService.statesList().then(function(response){
            $scope.states = response.statList;
        });
    }
    $scope.currentPage=1;

    function suppliersList(){
        commonService.listSuppler().then(function(response){
            $scope.suppliers = response.supList;
            $scope.totalsup = $scope.suppliers.length;
        });
    }
    

    $scope.newSuppModel=function(){
        $scope.supLierModem=true;
    }
    $scope.msclose=function(){
        $scope.supLierModem=false;
    }

    $scope.saveSupplier=function(supdetails){
        commonService.saveSupData(supdetails).then(function(response){
            Data.toast(response);
            $scope.supLierModem=false;
            suppliersList();
         });
    }
});



app.controller("salesCtrl", function($scope, Data,$state,commonService) {
 
    $scope.newSaleRequired=function(){
        suppliersList();
        itemsList();
    }
    function suppliersList(){
        commonService.listSuppler().then(function(response){
            $scope.suppliers = response.supList;
        });
    }
    function itemsList(){
        commonService.listAllitems().then(function(response){
            $scope.allItems = response;
       })
    }
    $scope.getMySlab=function(supid){
        commonService.myslab(supid).then(function(response){
            $scope.mySlabc = response.mySlab;
       })
    }

    $scope.getDetails = function(row) {
        var myslab =$scope.mySlabc;
         angular.forEach($scope.allItems, function(p) {
            if (p.id == row.itemnm.id) {
                row.unitnm = p.unit;
                row.price = p.price;
                if(myslab==0){
                    console.log(p.cgst);
                    console.log(p.sgst);
                    row.cgst = p.cgst;
                    row.sgst = p.sgst;
                    row.igst = 0;
                }else{
                    row.cgst = 0;
                    row.sgst = 0;
                    row.igst = p.igst;
                }
            }
        });
    }

    $scope.totlmAmount = function() {
        var total = 0;
        for (var i = 0; i < $scope.itemRows.length; i++) {
            var items = $scope.itemRows[i];
            total += parseFloat(items.qty * (items.price - (items.price * (items.disc / 100))));
        }
        return total;
    }

   
    $scope.totalCGST = function() {
        var total = 0;
        for (var i = 0; i < $scope.itemRows.length; i++) {
            var items = $scope.itemRows[i];
             total += parseFloat(((items.qty * (items.price - (items.price * (items.disc / 100)))) * (items.cgst) ) / 100 );
        }
        return total;
    }

    $scope.totalSGST = function() {
        var total = 0;
        for (var i = 0; i < $scope.itemRows.length; i++) {
            var items = $scope.itemRows[i];
             total += parseFloat(((items.qty * (items.price - (items.price * (items.disc / 100)))) * (items.sgst) ) / 100 );
        }
        return total;
    }

    $scope.totalIGST = function() {
        var total = 0;
        for (var i = 0; i < $scope.itemRows.length; i++) {
            var items = $scope.itemRows[i];
             total += parseFloat(((items.qty * (items.price - (items.price * (items.disc / 100)))) * (items.igst) ) / 100 );
        }
        return total;
    }

    
     


    $scope.itemRows = [{}];
    $scope.addItemRow = function() {
        $scope.itemRows.push({});
    };
    $scope.remItemRow = function(index) {
        $scope.itemRows.splice(index, 1);
        if ($scope.itemRows.length === 0) {
            $scope.itemRows = [];
        }
    }

    $scope.newt = {};
    $scope.test={};
    $scope.saveSales=function(sdetails){

      
        var supid = $scope.test.supid;
      
        var supid={supid:supid};
        var sdetails={sdetails:sdetails};
        var salesData = angular.extend(sdetails, supid);
       commonService.salesSave(salesData).then(function(response){
            console.log(response);
            $state.go('Sales.Sale');
       })


    }

    $scope.initSales=function(){
        salesList();
    }
    function salesList(){
        commonService.salesDataList().then(function(response){
            $scope.salesl = response.salesList;
       })
    }

 });