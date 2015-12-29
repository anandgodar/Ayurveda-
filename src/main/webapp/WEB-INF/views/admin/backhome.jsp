<div class="row" ng-controller="dashboardController">

    <div class="col-md-4 col-sm-5">

        <div class="portlet portlet-default">

            <div class="portlet-header">
                <h4 class="portlet-title">
                    Quick Overview
                </h4>
            </div> <!-- /.portlet-header -->

            <div class="portlet-body">

                <p>Following data shows the trend from 2010-2015.</p>

                <hr>

                <table class="table keyvalue-table">
                    <tbody>
                    <tr>
                        <td class="kv-key"><i class="fa fa-group kv-icon kv-icon-primary"></i><a href=""
                                                                                                 onclick="patientChart();">
                            Patient</a></td>
                        <td class="kv-value"><a href="#subreport/patient">{{statRecords.patientCount}}</a></td>
                    </tr>
                    <tr>
                        <td class="kv-key"><i class="fa fa-bug kv-icon kv-icon-secondary"></i><a href=""
                                                                                                 onclick="diseaseChart();">
                            Disease</a></td>
                        <td class="kv-value"><a href="#subreport/disease">{{statRecords.diseaseCount}}</a></td>
                    </tr>
                    <tr>
                        <td class="kv-key"><i class="fa fa-warning kv-icon kv-icon-warning"></i><a href=""
                                                                                                   onclick="symptomChart();">
                            Symptoms</a></td>
                        <td class="kv-value"><a href="#subreport/symptom">{{statRecords.symptomCount}}</a></td>
                    </tr>
                    <tr>
                        <td class="kv-key"><i class="fa fa-medkit kv-icon kv-icon-success"></i><a href=""
                                                                                                  onclick="herbalChart();">
                            Herbals</a></td>
                        <td class="kv-value"><a href="#subreport/herbal">{{statRecords.herbalCount}}</a></td>
                    </tr>
                    </tbody>
                </table>

            </div> <!-- /.portlet-body -->

        </div> <!-- /.portlet -->

    </div> <!-- /.col -->


    <div class="col-md-8 col-sm-7">
        <div id="chart-show" class="portlet portlet-boxed" hidden="hidden">

            <div class="portlet-header">
                <h4 class="portlet-title">
                    <u id="my-chart-title"></u>
                </h4>
            </div> <!-- /.portlet-header -->

            <div class="portlet-body">
                <div id="vertical-chart" class="chart-holder" style="padding: 0px; position: relative;">
                    <canvas class="flot-base"
                            style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 513px; height: 300px;"
                            width="513" height="300"></canvas>
                    <div class="flot-text"
                         style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
                        <div class="flot-x-axis flot-x1-axis xAxis x1Axis"
                             style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; max-width: 102px; top: 285px; left: 166px; text-align: center;">
                                Feb
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; max-width: 102px; top: 285px; left: 351px; text-align: center;">
                                Apr
                            </div>
                        </div>
                        <div class="flot-y-axis flot-y1-axis yAxis y1Axis"
                             style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 273px; left: 18px; text-align: right;">0
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 218px; left: 6px; text-align: right;">250
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 164px; left: 6px; text-align: right;">500
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 109px; left: 6px; text-align: right;">750
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 55px; left: 0px; text-align: right;">1000
                            </div>
                            <div class="flot-tick-label tickLabel"
                                 style="position: absolute; top: 1px; left: 0px; text-align: right;">1250
                            </div>
                        </div>
                    </div>
                    <canvas class="flot-overlay"
                            style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 513px; height: 300px;"
                            width="513" height="300"></canvas>
                    <div class="legend">
                        <div style="position: absolute; width: 60px; height: 45px; top: 13px; right: 14px; opacity: 0.85; background-color: rgb(255, 255, 255);"></div>
                        <table style="position:absolute;top:13px;right:14px;;font-size:smaller;color:#545454">
                            <tbody>
                            <tr>
                                <td class="legendColorBox">
                                    <div style="border:1px solid #ccc;padding:1px">
                                        <div style="width:4px;height:0;border:5px solid rgb(215,75,75);overflow:hidden"></div>
                                    </div>
                                </td>
                                <td class="legendLabel">Product 1</td>
                            </tr>
                            <tr>
                                <td class="legendColorBox">
                                    <div style="border:1px solid #ccc;padding:1px">
                                        <div style="width:4px;height:0;border:5px solid rgb(71,95,119);overflow:hidden"></div>
                                    </div>
                                </td>
                                <td class="legendLabel">Product 2</td>
                            </tr>
                            <tr>
                                <td class="legendColorBox">
                                    <div style="border:1px solid #ccc;padding:1px">
                                        <div style="width:4px;height:0;border:5px solid rgb(188,188,188);overflow:hidden"></div>
                                    </div>
                                </td>
                                <td class="legendLabel">Product 3</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> <!-- /.portlet-body -->

        </div> <!-- /.portlet -->

    </div> <!-- /.col -->

</div>
<!-- /.row -->

<script type="application/javascript">
    patientChart();
</script>
