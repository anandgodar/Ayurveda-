<div class="row" ng-controller="reportController">
	<div class="col-sm-12">
		<table
			class="table table-striped table-bordered table-hover ui-datatable dataTable dataTable-helper"
			id="DataTables_Table_3" role="grid"
			aria-describedby="DataTables_Table_3_info" style="width: 1140px;">
			<thead>
				<tr role="row">
					<th class="sorting_disabled" rowspan="1" colspan="1"
						aria-label="Name" style="width: 219px;">Disease Name</th>
					<th class="sorting_disabled" rowspan="1" colspan="1"
						style="width: 200px;" aria-label="Position">Infected Person</th>
					<th class="sorting_disabled" rowspan="1" colspan="1"
						style="width: 164px;" aria-label="Office">Symptoms</th>
					<th class="sorting_disabled" rowspan="1" colspan="1"
						style="width: 68px;" aria-label="Extn">Herbals</th>
					
				</tr>
			</thead>
			<tbody>

				<tr role="row" class="odd" ng-repeat="diseaseRecord in diseaseRecords">
					<td class="sorting_1 sorting_3">{{diseaseRecord.disease}}</td>
					<td class="sorting_2 sorting_3">{{diseaseRecord.diseaseCount}}</td>
					<td class="sorting_3">San Francisco</td>
					<td class="sorting_3">4389</td>
					
				</tr>
				
			</tbody>
			<tfoot>
				<tr>
					<th rowspan="1" colspan="1">Name</th>
					<th rowspan="1" colspan="1">Count</th>
					<th rowspan="1" colspan="1">Herbals</th>
					<th rowspan="1" colspan="1">Symptoms</th>
					
				</tr>
			</tfoot>
		</table>
	</div>
</div>