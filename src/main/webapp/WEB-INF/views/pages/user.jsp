<div ng-controller="userController">
	<div class="alert alert-error" ng-show="error">{{errorMessage}}</div>
	<div class="row well">
		<form>
			<div class="row">
				<div class="col-lg-6">
					<input class="form-control" placeholder="Username" type="text"
						ng-model="user.username" /><br /> <input class="form-control"
						placeholder="Enter Password" type="password"
						ng-model="user.password" /><br />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<input class="form-control" placeholder="firstName" type="text"
						ng-model="user.member.firstName" /><br /> <input
						class="form-control" placeholder="Enter LastName" type="text"
						ng-model="user.member.lastName" value="{{user.member.firstName}}" /><br />
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<input type="text" name="role" value="general" ng-model="user.role"
						class="form-control" /><br/> <input type="hidden" name="id"
						value="general" ng-model="user.id" />
					<button type="btn btn-primary" class="btn btn-primary"
						ng-click="add(user)">Save</button>
					<button type="btn btn-primary" class="btn btn-primary"
						ng-click="resetUser()">Reset</button>
				</div>
			</div>
		</form>


	</div>
	<hr />



	<div class="alert alert-info" style="width: 400px; margin-left: 100px;"
		ng-show="userRecords.length == 0">No Userentry found</div>
	<table class="table table-bordered table-striped"
		ng-show="userRecords.length > 0">
		<thead>
			<tr>

				<th style="text-align: center;">Username</th>
				<th style="text-align: center;">Role</th>
				<th style="text-align: center;">Name</th>
				<th style="text-align: center;">Action</th>
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="user in userRecords">

				<td>{{user.username}}</td>
				<td>{{user.role}}</td>
				<td>{{user.member.firstName}} {{user.member.lastName}}</td>
				<td><button class="btn btn-mini btn-danger"
						ng-click="updateUser(user)">Update</button>
					<button class="btn btn-mini btn-danger"
						ng-click="deleteUser(user)">Delete</button></td>
			</tr>
		</tbody>
	</table>
</div>
