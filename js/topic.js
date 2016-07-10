var topic = angular.module('topicModule', []); 
    
topic.service('topicService', function() {
    this.goToPage= function(pageName) {
        window.location.href = pageName; 
    }
});

topic.controller('getTopicListCtrl',  ['$scope', '$http', 'topicService', function ($scope, $http, topicService) 
{
    
    loadTopicList();
    
    function loadTopicList() {
    
        var myUrl = '../controllers/gettopiclist.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getTopicList = data;
    	});
        
    }
    
    $("#btnAddTopic").click(function() {
        topicService.goToPage("addtopic.php");  
    });
    
    $("#idTopic").change(function() {
       var selected = $("#idTopic").val();
        
        if (selected == "1") {
            loadMainTopics();
            $("#hiddenDiv").css("display","block");
        } else {
            $("#hiddenDiv").css("display","none");
        }
    });
    
    function loadMainTopics() {
        
        var myUrl = '../controllers/getmaintopic.php';
        
        $http({
            url: myUrl, 
            method: "GET"
        }).success(function(data) {
           $scope.getMainTopic = data;
    	});
        
    }
    
    $scope.saveTopic = function() {
        
        var topicType = $("select[name='topicchoice']").val();
        var subTopicId = $("select[name='topicval']").val();
        var topicName = $("#topicName").val();
        
        var myUrl = '../controllers/savetopic.php';
        
        if (subTopicId == null) {
            subTopicId = 0;   
        }
        
        $http({
            url: myUrl, 
            method: "GET",
            params: { ttype: topicType, subtopic: subTopicId, tname: topicName }
        }).success(function(data) {
            $scope.$apply;
            topicService.goToPage("topicconfig.php");
    	});
        
    }
    
}]);
