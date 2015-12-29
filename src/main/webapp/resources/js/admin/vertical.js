var setTitle = function(title,time){
    $('#chart-show').show();
    $('#my-chart-title').text(title+"  Chart"+time);
};

var patientChart = function () {
    setTitle("Patient","");
    var d1, d2, d3, data, chartOptions;

    d1 = [
        [1335830400000, 39],
        [1325376000000, 53], [1328054400000, 61], [1330560000000, 56], [1333238400000, 69],
    ];

    d2 = [
        [1325376000000, 800], [1328054400000, 600], [1330560000000, 300], [1333238400000, 350],
        [1335830400000, 300]
    ];

    d3 = [
        [1325376000000, 650], [1328054400000, 450], [1330560000000, 150], [1333238400000, 200],
        [1335830400000, 150]
    ];

    data = [{
        label: '',
        data: d1,
        bars: {
            order: 0
        }
    }/*, {
     label: 'Fever',
     data: d2,
     bars: {
     order: 1
     }
     }, {
     label: 'Hepatitis',
     data: d3,
     bars: {
     order: 2
     }
     }*/];

    chartOptions = {
        xaxis: {
            min: (new Date(2011, 11, 15)).getTime(),
            max: (new Date(2012, 04, 18)).getTime(),
            mode: "time",
            tickSize: [1, "month"],
            monthNames: [2010,2011,2012,2013,2014],
            tickLength: 0
        },
        grid: {
            hoverable: true,
            clickable: false,
            borderWidth: 0
        },
        bars: {
            show: true,
            barWidth: 12*24*60*60*800,
            fill: true,
            lineWidth: 1,
            lineWidth: 0,
            fillColor: { colors: [ { opacity: 1 }, { opacity: 1 } ] }
        },

        tooltip: true,
        tooltipOpts: {
            content: '%y'
        },
        colors: mvpready_core.layoutColors
    };


    var holder = $('#vertical-chart');

    if (holder.length) {
        $.plot(holder, data, chartOptions );
    }

};

var diseaseChart = function () {
    setTitle("Disease"," (2010-2014)");
    var d1, d2, d3, data, chartOptions;

    d1 = [
        [1325376000000, 25], [1328054400000, 26], [1330560000000, 29], [1333238400000, 20],
        [1335830400000, 40]
    ];

    d2 = [
        [1325376000000, 800], [1328054400000, 600], [1330560000000, 300], [1333238400000, 350],
        [1335830400000, 300]
    ];

    d3 = [
        [1325376000000, 650], [1328054400000, 450], [1330560000000, 150], [1333238400000, 200],
        [1335830400000, 150]
    ];

    data = [{
        label: '',
        data: d1,
        bars: {
            order: 0
        }
    }/*, {
        label: 'Fever',
        data: d2,
        bars: {
            order: 1
        }
    }, {
        label: 'Hepatitis',
        data: d3,
        bars: {
            order: 2
        }
    }*/];

    chartOptions = {
        xaxis: {
            min: (new Date(2011, 11, 15)).getTime(),
            max: (new Date(2012, 04, 18)).getTime(),
            mode: "time",
            tickSize: [1, "month"],
            monthNames: ["Hepatitis","Migraine","Crohn","Cholesterol","Anemia"],
            tickLength: 0
        },
        grid: {
            hoverable: true,
            clickable: false,
            borderWidth: 0
        },
        bars: {
            show: true,
            barWidth: 12*24*60*60*800,
            fill: true,
            lineWidth: 1,
            lineWidth: 0,
            fillColor: { colors: [ { opacity: 1 }, { opacity: 1 } ] }
        },

        tooltip: true,
        tooltipOpts: {
            content: '%y'
        },
        colors: mvpready_core.layoutColors
    };


    var holder = $('#vertical-chart');

    if (holder.length) {
        $.plot(holder, data, chartOptions );
    }

};

var symptomChart = function () {
    setTitle("Symptom"," (2010-2014)");
    var d1, d2, d3, data, chartOptions;

    d1 = [
        [1325376000000, 40], [1328054400000, 25], [1330560000000, 29], [1333238400000, 26],
        [1335830400000, 20]
    ];

    d2 = [
        [1325376000000, 800], [1328054400000, 600], [1330560000000, 300], [1333238400000, 350],
        [1335830400000, 300]
    ];

    d3 = [
        [1325376000000, 650], [1328054400000, 450], [1330560000000, 150], [1333238400000, 200],
        [1335830400000, 150]
    ];

    data = [{
        label: '',
        data: d1,
        bars: {
            order: 0
        }
    }/*, {
     label: 'Fever',
     data: d2,
     bars: {
     order: 1
     }
     }, {
     label: 'Hepatitis',
     data: d3,
     bars: {
     order: 2
     }
     }*/];

    chartOptions = {
        xaxis: {
            min: (new Date(2011, 11, 15)).getTime(),
            max: (new Date(2012, 04, 18)).getTime(),
            mode: "time",
            tickSize: [1, "month"],
            monthNames: ["Anemia/Fatigue","Hepatitis/Weakness","Crohn/Fever and fatigue","Migraine/Anorexia Sleepiness","Cholesterol/Neck and brain pain"],
            tickLength: 0
        },
        grid: {
            hoverable: true,
            clickable: true,
            borderWidth: 0
        },
        bars: {
            show: true,
            barWidth: 12*24*60*60*800,
            fill: true,
            lineWidth: 1,
            lineWidth: 0,
            fillColor: { colors: [ { opacity: 1 }, { opacity: 1 } ] }
        },

        tooltip: true,
        tooltipOpts: {
            content: '%y'
        },
        colors: mvpready_core.layoutColors
    };


    var holder = $('#vertical-chart');

    if (holder.length) {
        $.plot(holder, data, chartOptions );
        $(holder.bind("plotclick",function(event,pos,item){
            alert(item.datapoint+" "+item.series);
        }));
    }

};

var herbalChart = function () {
    setTitle("Herbal"," (2010-2014)");
    var d1, d2, d3, data, chartOptions;

    d1 = [
        [1325376000000, 20], [1328054400000, 26], [1330560000000, 40],[1333238400000, 25],
        [1335830400000, 29]
    ];

    d2 = [
        [1325376000000, 800], [1328054400000, 600], [1330560000000, 300], [1333238400000, 350],
        [1335830400000, 300]
    ];

    d3 = [
        [1325376000000, 650], [1328054400000, 450], [1330560000000, 150], [1333238400000, 200],
        [1335830400000, 150]
    ];

    data = [{
        label: '',
        data: d1,
        bars: {
            order: 0
        }
    }/*, {
     label: 'Fever',
     data: d2,
     bars: {
     order: 1
     }
     }, {
     label: 'Hepatitis',
     data: d3,
     bars: {
     order: 2
     }
     }*/];

    chartOptions = {
        xaxis: {
            min: (new Date(2011, 11, 15)).getTime(),
            max: (new Date(2012, 04, 18)).getTime(),
            mode: "time",
            tickSize: [1, "month"],
            monthNames: ["Cholesterol/Alfalfa (Medicago sativa) leaves","Migraine/Feverfew","Anemia/Jamaica Dogwood","Hepatitis/Licorice root","Crohn/Onions garlic honey"],
            tickLength: 0
        },
        grid: {
            hoverable: true,
            clickable: false,
            borderWidth: 0
        },
        bars: {
            show: true,
            barWidth: 12*24*60*60*800,
            fill: true,
            lineWidth: 1,
            lineWidth: 0,
            fillColor: { colors: [ { opacity: 1 }, { opacity: 1 } ] }
        },

        tooltip: true,
        tooltipOpts: {
            content: '%y'
        },
        colors: mvpready_core.layoutColors
    };


    var holder = $('#vertical-chart');

    if (holder.length) {
        $.plot(holder, data, chartOptions );
    }

};