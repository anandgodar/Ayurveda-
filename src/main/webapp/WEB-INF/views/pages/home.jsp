<div class="row">
	<div class="col-xs-8" id="left" ng-controller="dshpController">
		<br /> <input type="text" class="form-control"
			placeholder="What are searching for?" ng-model="searchDisease">
			<h1>Total Records : {{dshpRecords[0].total}}, Showing {{(dshpRecords|filter:searchDisease).length}} out of {{dshpRecords.length}} Distinct Records</h1>
		<div ng-repeat="dshp in dshpRecords | filter:searchDisease | orderBy:dshp.subTotal ">
			<!-- item list -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<a href="">Disease {{dshp.disease}} - Symptom-{{dshp.symptom}} ,year {{dshp.importDate}} , Total Treated : {{dshp.subTotal}} ,Using herbal :{{dshp.herbal}} </a>
				</div>
			</div>
			<blockquote>
				<p>%: {{dshp.subTotal}}/{{dshp.total}}</p>
				<footer>
					Herbal Used: <cite title="Source Title">{{dshp.herbal}}</cite>
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