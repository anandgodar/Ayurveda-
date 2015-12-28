<div class="row">
	<div class="col-xs-8" id="left" ng-controller="dshpController">
		<br />
		<div class="row well">
			<div class="col-xs-4">
				<input type="text" class="form-control"
					placeholder="Search for Disease" ng-model="search.disease">
			</div>
			<div class="col-xs-4">
				<input type="text" class="form-control"
					placeholder="search for Symptoms" ng-model="search.symptom">
			</div>
			<div class="col-xs-4">
				<input type="text" class="form-control"
					placeholder="Search For Herbal" ng-model="search.herbal">
			</div>
			
				<div class="col-xs-4" style="margin-top:10px">
					<input type="text" class="form-control"
						placeholder="Year of Treatment" ng-model="search.importDate">
				</div>
				<div class="col-xs-8" style="margin-top:10px">
					<input type="text" class="form-control"
						placeholder="Quick Search ......." ng-model="search.$">
				</div>
			
		</div>

		<h5 class="panel-heading">Total Records :
			{{dshpRecords[0].total}}, Showing
			{{(dshpRecords|filter:search).length}} out of
			{{dshpRecords.length}} Distinct Records</h5>
		<div
			ng-repeat="dshp in dshpRecords | filter:search | orderBy:dshp.herbal ">
			<!-- item list -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<a href="">Disease {{dshp.disease}} - Symptom-{{dshp.symptom}}
						,year {{dshp.importDate}} , Total Treated : {{dshp.subTotal}}
						,Using herbal :{{dshp.herbal}} </a>
				</div>
			</div>
			<blockquote>
				<h4>Summary</h4>
				<p>Total Patient : {{dshp.total}}</p>
				<p>Total Patient Suffering from - {{dshp.disease}} :
					{{(dshpRecords|filter:dshp.disease).length}}</p>
				<p>Total Patient Treated in {{dshp.importDate}} :
					{{dshp.subTotal}} using Ayurvedic Herbal {{dshp.herbal}}</p>
				<p>Total Patient Treated all over time :
					{{(dshpRecords|filter:dshp.herbal).length}} using Ayurvedic Herbal
					{{dshp.herbal}}</p>
				<footer>
					Total Person Treated by Using Herbal <cite title="Source Title">{{dshp.herbal}}</cite>
					at different time is : <b>{{(dshpRecords|filter:dshp.herbal).length}}</b>
				</footer>
			</blockquote>

			<hr>
		</div>

		<!-- /item list -->



		<hr>

		<p>
			<a href="http://bootply.com" target="_ext"
				class="center-block btn btn-primary">More Bootstrap Snippets on
				Bootply</a>
		</p>

		<hr>

	</div>
	<div class="col-xs-4">
		<!--map-canvas will be postioned here-->
	</div>

</div>