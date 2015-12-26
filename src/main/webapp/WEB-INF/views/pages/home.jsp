<div class="row" >
  	<div class="col-xs-8" id="left" ng-controller="dshpController">
  	<br/>
  	<input type="text" class="form-control"
							placeholder="What are searching for?" ng-model="searchDisease"> 
   <div ng-repeat="dshp in dshpRecords | filter:searchDisease">
      <h2 >{{dshp.disease}}</h2>
      
      <!-- item list -->
      <div class="panel panel-default">
        <div class="panel-heading"><a href="">{{dshp.symptom}}</a></div>
      </div>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis pharetra varius quam sit amet vulputate. 
        Quisque mauris augue, molestie tincidunt condimentum vitae, gravida a libero. Aenean sit amet felis 
        dolor, in sagittis nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor accumsan. 
        Aliquam in felis sit amet augue.</p>
      
      <hr>
    </div>  
     
      <!-- /item list -->
      
      
      
      <hr> 
        
      <p>
      <a href="http://bootply.com" target="_ext" class="center-block btn btn-primary">More Bootstrap Snippets on Bootply</a>
      </p>
        
      <hr>      

    </div>
    <div class="col-xs-4"><!--map-canvas will be postioned here--></div>
    
  </div>