
<div class="row" ng-controller="dashboardController">

	<div class="col-md-4 col-sm-5">

		<div class="portlet portlet-default">

			<div class="portlet-header">
				<h4 class="portlet-title">Quick Overview</h4>
			</div>
			<!-- /.portlet-header -->

			<div class="portlet-body">


				<hr>

				<table class="table keyvalue-table">
					<tbody>
						<tr>
							<td class="kv-key"><i
								class="fa fa-dollar kv-icon kv-icon-primary"></i> Total Patient</td>
							<td class="kv-value"><a href="#subreport/patient">{{statRecords.patientCount}}</a>
							</td>
						</tr>
						<tr>
							<td class="kv-key"><i
								class="fa fa-gift kv-icon kv-icon-secondary"></i> Total Disease</td>
							<td class="kv-value"><a href="#subreport/disease">{{statRecords.diseaseCount}}</a>
							</td>
						</tr>
						<tr>
							<td class="kv-key"><i
								class="fa fa-exchange kv-icon kv-icon-tertiary"></i>Total
								Symptoms</td>
							<td class="kv-value"><a href="#subreport/symptom">{{statRecords.symptomCount}}</a></td>
						</tr>
						<tr>
							<td class="kv-key"><i
								class="fa fa-envelope-o kv-icon kv-icon-default"></i> Herbals</td>
							<td class="kv-value"><a href="#subreport/herbal">{{statRecords.herbalCount}}</a>
							</td>
						</tr>
					</tbody>
				</table>

			</div>
			<!-- /.portlet-body -->

		</div>
		<!-- /.portlet -->

	</div>
	<!-- /.col -->


	<div class="col-md-8 col-sm-7">
		<div class="portlet portlet-default">

			<div class="portlet-header">
				<h4 class="portlet-title">Monthly Traffic</h4>
			</div>
			<!-- /.portlet-header -->

			<div class="portlet-body">

				<div class="graph-container">
					<div class="caption">Disease VS Patient</div>
					<div id="hero-bar" class="graph" style="position: relative;">
						<svg height="220" version="1.1" width="508"
							xmlns="http://www.w3.org/2000/svg"
							style="overflow: hidden; position: relative; left: -0.5px;">
							<desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Fever</desc>
							<defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></defs>
							<text x="43.5" y="151.985167404" text-anchor="end"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">0</tspan></text>
							<path fill="none" stroke="#aaaaaa" d="M56,151.985167404H483"
								stroke-width="0.5"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
							<text x="43.5" y="120.23887555300001" text-anchor="end"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal">
							<tspan dy="4.004500553000014"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">500</tspan></text>
							<path fill="none" stroke="#aaaaaa" d="M56,120.23887555300001H483"
								stroke-width="0.5"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
							<text x="43.5" y="88.492583702" text-anchor="end"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal">
							<tspan dy="4.008208702000005"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,000</tspan></text>
							<path fill="none" stroke="#aaaaaa" d="M56,88.492583702H483"
								stroke-width="0.5"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
							<text x="43.5" y="56.746291850999995" text-anchor="end"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal">
							<tspan dy="4.011916850999995"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">1,500</tspan></text>
							<path fill="none" stroke="#aaaaaa" d="M56,56.746291850999995H483"
								stroke-width="0.5"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
							<text x="43.5" y="25" text-anchor="end"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: end; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal">
							<tspan dy="4"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">2,000</tspan></text>
							<path fill="none" stroke="#aaaaaa" d="M56,25H483"
								stroke-width="0.5"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path>
							<text x="447.4166666666667" y="164.485167404"
								text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none"
								fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-33.5011,306.155)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Stress</tspan></text>
							<text x="376.25" y="164.485167404" text-anchor="middle"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-49.6462,267.6358)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Backpain</tspan></text>
							<text x="305.08333333333337" y="164.485167404"
								text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none"
								fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-59.2408,224.519)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><a href="#everyDetailStats">Fever</a></tspan></text>
							<text x="233.91666666666666" y="164.485167404"
								text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none"
								fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-79.0749,188.5719)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><a href="#everyDetailStats">Brain Hamarage</a></tspan></text>
							<text x="162.75" y="164.485167404" text-anchor="middle"
								font="10px &quot;Arial&quot;" stroke="none" fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-88.6668,145.464)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Stomachache</tspan></text>
							<text x="91.58333333333334" y="164.485167404"
								text-anchor="middle" font="10px &quot;Arial&quot;" stroke="none"
								fill="#888888"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: middle; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 12px; line-height: normal; font-family: sans-serif;"
								font-size="12px" font-family="sans-serif" font-weight="normal"
								transform="matrix(0.8192,-0.5736,0.5736,0.8192,-93.7561,99.1925)">
							<tspan dy="4.000792404000009"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Mental Disorder</tspan></text>
							<rect x="64.89583333333333" y="143.350176020528" width="53.375"
								height="8.634991383471998" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
							<rect x="136.0625" y="143.286683436826" width="53.375"
								height="8.698483967174013" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
							<rect x="207.22916666666669" y="134.52470688595" width="53.375"
								height="17.460460518050013" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
							<rect x="278.3958333333333" y="127.85798559724" width="53.375"
								height="24.127181806760007" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
							<rect x="349.5625" y="110.39752507919" width="53.375"
								height="41.587642324810005" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect>
							<rect x="420.7291666666667" y="52.23831840815801" width="53.375"
								height="99.746848995842" r="0" rx="0" ry="0" fill="#0b62a4"
								stroke="#000" stroke-width="0"
								style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></rect></svg>
						<div class="morris-hover morris-default-style"
							style="left: 38.5833px; top: 78px; display: none;">
							<div class="morris-hover-row-label">...</div>
							<div class="morris-hover-point" style="color: #0b62a4">
								Stress</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.portlet-body -->

		</div>
		<!-- /.portlet -->

	</div>
	<!-- /.col -->

</div>
<!-- /.row -->

<br>

<div class="row">

	
	<div class="col-md-4">

		<div class="portlet portlet-default">

			<div class="portlet-header">
				<h4 class="portlet-title">Disease Stats</h4>
			</div>
			<!-- /.portlet-header -->

			<div class="portlet-body">

				<div class="progress-stat">

					<div class="progress-stat-label">% Fever</div>

					<div class="progress-stat-value">77.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">77.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<div class="progress-stat">

					<div class="progress-stat-label">% cholesterol</div>

					<div class="progress-stat-value">10.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
							style="width: 10%">
							<span class="sr-only">10.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->
				<div class="progress-stat">

					<div class="progress-stat-label">%Heart Disease</div>

					<div class="progress-stat-value">42.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="42" aria-valuemin="0"
							aria-valuemax="100" style="width: 42%">
							<span class="sr-only">42.7% Bounce Rate</span>
						</div>
					</div>

				<div class="progress-stat">

					<div class="progress-stat-label">% Headache</div>

					<div class="progress-stat-value">33.2%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-tertiary" role="progressbar"
							aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"
							style="width: 33%">
							<span class="sr-only">33% Mobile Visitors</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<!-- /.progress-stat -->

				<div class="progress-stat">

					<div class="progress-stat-label">% Hepatitis Disease</div>

					<div class="progress-stat-value">12.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="12" aria-valuemin="0"
							aria-valuemax="100" style="width: 12%">
							<span class="sr-only">12.7% Bounce Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->

			</div>
			<!-- /.portlet-body -->

		</div>
		<!-- /.portlet -->

	</div>
	<!-- /.col -->
</div>
	<div class="col-md-4">

		<div class="portlet portlet-default">

			<div class="portlet-header">
				<h4 class="portlet-title">Herbal Stats</h4>
			</div>
			<!-- /.portlet-header -->

			<div class="portlet-body">

				<div class="progress-stat">

					<div class="progress-stat-label">% Fever</div>

					<div class="progress-stat-value">77.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">77.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<div class="progress-stat">

					<div class="progress-stat-label">% cholesterol</div>

					<div class="progress-stat-value">10.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
							style="width: 10%">
							<span class="sr-only">10.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->
				<div class="progress-stat">

					<div class="progress-stat-label">%Heart Disease</div>

					<div class="progress-stat-value">42.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="42" aria-valuemin="0"
							aria-valuemax="100" style="width: 42%">
							<span class="sr-only">42.7% Bounce Rate</span>
						</div>
					</div>

				<div class="progress-stat">

					<div class="progress-stat-label">% Headache</div>

					<div class="progress-stat-value">33.2%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-tertiary" role="progressbar"
							aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"
							style="width: 33%">
							<span class="sr-only">33% Mobile Visitors</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<!-- /.progress-stat -->

				<div class="progress-stat">

					<div class="progress-stat-label">% Hepatitis Disease</div>

					<div class="progress-stat-value">12.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="12" aria-valuemin="0"
							aria-valuemax="100" style="width: 12%">
							<span class="sr-only">12.7% Bounce Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->

			</div>
			<!-- /.portlet-body -->

		</div>
		<!-- /.portlet -->

	</div>
	</div>
		<div class="col-md-4">

		<div class="portlet portlet-default">

			<div class="portlet-header">
				<h4 class="portlet-title">Symptom Stats</h4>
			</div>
			<!-- /.portlet-header -->

			<div class="portlet-body">

				<div class="progress-stat">

					<div class="progress-stat-label">% Fever</div>

					<div class="progress-stat-value">77.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="77" aria-valuemin="0" aria-valuemax="100"
							style="width: 77%">
							<span class="sr-only">77.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<div class="progress-stat">

					<div class="progress-stat-label">% cholesterol</div>

					<div class="progress-stat-value">10.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-primary" role="progressbar"
							aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"
							style="width: 10%">
							<span class="sr-only">10.74% Visit Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->
				<div class="progress-stat">

					<div class="progress-stat-label">%Heart Disease</div>

					<div class="progress-stat-value">42.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="42" aria-valuemin="0"
							aria-valuemax="100" style="width: 42%">
							<span class="sr-only">42.7% Bounce Rate</span>
						</div>
					</div>

				<div class="progress-stat">

					<div class="progress-stat-label">% Headache</div>

					<div class="progress-stat-value">33.2%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-tertiary" role="progressbar"
							aria-valuenow="33" aria-valuemin="0" aria-valuemax="100"
							style="width: 33%">
							<span class="sr-only">33% Mobile Visitors</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				
				<!-- /.progress-stat -->

				<div class="progress-stat">

					<div class="progress-stat-label">% Hepatitis Disease</div>

					<div class="progress-stat-value">12.7%</div>

					<div class="progress progress-striped progress-sm active">
						<div class="progress-bar progress-bar-secondary"
							role="progressbar" aria-valuenow="12" aria-valuemin="0"
							aria-valuemax="100" style="width: 12%">
							<span class="sr-only">12.7% Bounce Rate</span>
						</div>
					</div>
					<!-- /.progress -->

				</div>
				<!-- /.progress-stat -->

			</div>
			<!-- /.portlet-body -->

		</div>
		<!-- /.portlet -->

	</div>
	
	
	

	</div>
<!-- /.row -->
