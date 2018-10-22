'use strict';

var app = angular.module("salesManager", ['ui.router','ui.bootstrap.modal','ngAnimate','ngSanitize','toaster','angularUtils.directives.dirPagination','nvd3']);
app.config(function($stateProvider, $urlRouterProvider,$locationProvider) {

    $urlRouterProvider.otherwise('/');

    $stateProvider

    .state('/', {
        url: '/',
        templateUrl: 'app/views/login/login.html',
        controller: 'authCtrl'
    })

    // Đăng nhập và view được lồng qua ========================================
        .state('login', {
        url: '/login',
        templateUrl: 'app/views/login/login.html',
        controller: 'authCtrl'
    })

    // COMMON PAGE AND MULTIPLE NAMED VIEWS =================================
    .state('Sales', {
        url: '/Sales',
        templateUrl: 'app/views/common/header.html'
    })

    .state('Sales.Home', {
        url: '/Home',
        templateUrl: 'app/views/home/home.html',
        controller:'homeCtrl'
    })

        .state('Sales.Company', {
            url: '/Company',
            templateUrl: 'app/views/masters/company.html',
            controller: 'mastersCtrl'
        })

        .state('Sales.Items', {
            url: '/Items',
            templateUrl: 'app/views/masters/items.html',
            controller: 'mastersCtrl'
        })

        .state('Sales.Tax', {
            url: '/Tax',
            templateUrl: 'app/views/masters/taxSlab.html',
            controller: 'mastersCtrl'
        })


        .state('Sales.Suppliers', {
            url: '/Suppliers',
            templateUrl: 'app/views/masters/suppliers.html',
            controller: 'mastersCtrl'
        })


        

    .state('Sales.Sale', {
        url: '/Sale',
        templateUrl: 'app/views/sales/sale.html',
        controller: 'salesCtrl'
    })

    .state('Sales.Sale/:saleshid', {
        url: '/Sale/:saleshid',
        templateUrl: 'app/views/sales/editsales.html',
        controller: 'salesCtrl'
    })

      


    .state('Sales.NewSale', {
        url: '/NewSale',
        templateUrl: 'app/views/sales/newSale.html',
        controller: 'salesCtrl'
    })


    .state('Sales.SaleReport', {
        url: '/SaleReport',
        templateUrl: 'app/views/sales/report.html'
    })

    //$locationProvider.html5Mode(true); 
});

app.run(function($state, $rootScope, $location, Data) {
         $rootScope.$on("$stateChangeStart", function(event, next, current) {
            $rootScope.authenticated = false;
            Data.get('session').then(function(results) {
                 if (results.uid) {
                    $rootScope.authenticated = true;
                    $rootScope.uid = results.uid;
                    $rootScope.name = results.name;
                    $rootScope.email = results.email;
                    $rootScope.logphoto = results.photo;
                    sessionStorage.setItem('userid', $rootScope.uid);
                } else {
                    sessionStorage.removeItem('userid');
                    $state.go('/');
                }
            });
        });
    });

 