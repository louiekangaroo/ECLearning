var config = angular.module('configModule', []); 
    
config.service('configService', function() {
    this.goToPage= function(pageName) {
        window.location.href = pageName; 
    }
});

config.controller('getConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) 
{
    
    loadTestConfig();
      
    function loadTestConfig() {
    	$http({method: 'GET', url: '../controllers/gettestconfig.php'})
 		.success(function(data) {
            
            for (var iii = 0; iii <= data.length - 1; iii++) {
                data[iii].israndom = parseInt(data[iii].israndom);   
            }
            
            $scope.testconfig = data;
    	});
    }
    
    $('#btnCreateNew').click(function() {
        configService.goToPage("add.php"); 
    });
    
    $scope.btnEdit = function(id) {
        sessionStorage.setItem('editId', id);
        configService.goToPage("edit.php"); 
    }
    
    $scope.btnConfigure = function(id) {
        alert(id);   
    }
    
}]);

config.controller('addConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) 
{
    
    $scope.saveConfig = function() {
    
        var ttype = $("select[name='testtype']").val();
        var itemseasy = $("#easy").val();
        var itemsmoderate = $("#moderate").val();
        var itemsdifficult = $("#difficult").val();
        var isRandom = $scope.isChecked;
        
        if (validateConfigText()) {
        
            if (isRandom == undefined) { isRandom = false };
            var myUrl = '../controllers/addconfig.php';
            $http({
                url: myUrl, 
                method: "GET",
                params: { testtype: ttype,easy: itemseasy, moderate: itemsmoderate, difficult: itemsdifficult }
            }).success(function(data) {
               if (data == -1) {
                    alert("Test type already exist");   
               } else {
                    configService.goToPage("testconfig.php");
                   $scope.apply;
               }
            });
        } else { alert('Please complete required fields.') };
    }
    
     function validateConfigText() {
    
        var isValid = true;
        
        if ($("#easy").val() == "") {
            $("#easy").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        if ($("#moderate").val() == "") {
            $("#moderate").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
         
        if ($("#difficult").val() == "") {
            $("#difficult").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        return isValid;
        
    }
}]);

config.controller('editConfigCtrl',  ['$scope', '$http', 'configService', function ($scope, $http, configService) {

    var myid = sessionStorage.getItem('editId');
    var testtypeid = 0;
    
    loadConfigEdit(myid);
    
     function loadConfigEdit(myid) {
        var myUrl = '../controllers/gettestconfigone.php';
            
        $http({
        url: myUrl, 
        method: "GET",
        params: { id: myid }
        }).success(function(data) {
             var config = data[0];
            switch (config.topicname) {
                case "Post-Test":
                    testtypeid = 1;
                    break;
                case "Pre-Test":
                    testtypeid = 2;
                    break;
                case "Short Quiz":
                    testtypeid = 3;
                    break;
                case "Long Quiz":
                    testtypeid = 4;
                    break;
                case "Major Exam":
                    testtypeid = 5;
                    break;
            }
            
          
           $("select[name='testtype']").val(testtypeid);
            $("select[name='testtype']").prop('disabled', true);
           $("#easy").val(config.itemseasy);
            $("#moderate").val(config.itemsmoderate);
            $("#difficult").val(config.itemsdifficult);
            $("#txtIsRandomize").prop('checked', parseInt(config.israndom));
        });
    }
    
    $scope.updateConfig = function() {
        
        var ttype = $("select[name='testtype']").val();
        var itemseasy = $("#easy").val();
        var itemsmoderate = $("#moderate").val();
        var itemsdifficult = $("#difficult").val();
        var isRandom = $("#txtIsRandomize").prop('checked');
        
        if (validateConfigText()) {
        
            if (isRandom == true) { isRandom = 1 } else { isRandom = 0 };
            var myUrl = '../controllers/editconfig.php';
            $http({
                url: myUrl, 
                method: "GET",
                params: { id: myid, easy: itemseasy, moderate: itemsmoderate, difficult: itemsdifficult, randomMe: isRandom }
            }).success(function(data) {
                configService.goToPage("testconfig.php");
                $scope.apply;
            });
        } else { alert('Please complete required fields.') };
        
    }
    
     function validateConfigText() {
    
        var isValid = true;
        
        if ($("#easy").val() == "") {
            $("#easy").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        if ($("#moderate").val() == "") {
            $("#moderate").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
         
        if ($("#difficult").val() == "") {
            $("#difficult").css("border","1px solid rgb(255, 77, 77)");
            isValid = false;   
        }
        
        return isValid;
        
    }
    
}]);