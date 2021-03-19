

var options = {
      chart: {
        height: 350,
        type: 'line',
        
      },
      plotOptions: {
        bar: {
          columnWidth: '50%'
        }
      },
      colors: ['rgb(65, 1, 148)', 'rgb(69, 86, 238)'],
      series: [{
        name: 'Neurotron AI',
        type: 'column',
        data: [23, 11, 22, 27, 13, 22, 37, 21, 44, 22, 30,23, 11, 22, 27, 13, 22, 37, 21, 44, 22, 30]
      }, {
        name: 'System log',
        type: 'column',
        data: [44, 55, 41, 67, 22, 43, 21, 41, 56, 27, 43,44, 55, 41, 67, 22, 43, 21, 41, 56, 27, 43]
      }],
   
    title: {
      text: 'Alarm details status'},
      fill: {
        opacity: [0.85,0.25,1],
                gradient: {
                    inverseColors: false,
                    shade: 'light',
                    type: "vertical",
                    opacityFrom: 0.85,
                    opacityTo: 0.55,
                    stops: [0, 100, 100, 100]
                }
      },
      labels: ['01/01/2003', '02/01/2003','03/01/2003','04/01/2003','05/01/2003','06/01/2003','07/01/2003','08/01/2003','09/01/2003','10/01/2003','11/01/2003','12/01/2003', '01/01/2004','02/01/2004','03/01/2004','04/01/2004','05/01/2004','06/01/2004','07/01/2004','08/01/2004','9/01/2004','10/01/2004'],
      markers: {
        size: 0
      },
      xaxis: {
        type:'datetime'
      },
      yaxis: {
        min: 0
      },
      tooltip: {
        shared: true,
        intersect: false,
        y: {
          formatter: function (y) {
            if(typeof y !== "undefined") {
              return  y.toFixed(0) + " views";
            }
            return y;
            
          }
        }
      },
      legend: {
        labels: {
          useSeriesColors: true
        },
        markers: {
          customHTML: [
            function() {
              return ''
            }, function() {
              return ''
            }, function() {
              return ''
            }
          ]
        }
      }
    }

    var chart = new ApexCharts(
      document.querySelector("#dashboardGraph"),
      options
    );

    chart.render();

 

var options = {
  chart: {
    height: 350,
    type: 'line',
    stacked: false,
    },
    stroke: {
      width: [0, 2, 5],
      curve: 'smooth'
    },
  
  plotOptions: {
    bar: {
      columnWidth: '40%'
    }
  },
  title: {
    text: 'Server BlackBox log collection status',
  },
  colors: ['#3A2374', '#84A5C6','#49407F','#84B4AA', '#19659F'],
  series: [{
    name: 'SBBDWEB123',
    type: 'area',
    data: [23, 11, 22, 27, 13, 22, 37, 22, 37, 21, 44, 21, 44, 22, 30,23, 11, 22, 27, 13, 22, 30]
  }, {
    name: 'SBBDWEB456',
    type: 'area',
    data: [21, 41, 56, 27, 43,44, 22, 43, 67, 22, 43, 21, 41, 56, 27, 43, 55, 41,44, 55, 41, 67]
  }, {
    name: 'SBBDWEB789',
    type: 'area',
    data: [64, 52, 59, 36,30, 25,52, 59, 30, 45, 35, 64, 36, 39,30, 25, 36, 30,  36,45, 35, 39]
  },{
    name: 'SBBDWEB1011',
    type: 'area',
    data: [ 67, 44, 27, 43,44, 55, 22, 43,21, 41, 56, 27, 43,43,21, 41, 56, 43,44, 55, 22, 43,]
  },{
    name: 'SBBDWEB1213',
    type: 'area',
    data: [44, 5, 56, 5, 41, 67, 22, 43, 21,27, 43,67, 22, 41, 56, 5, 41, 44, 5, 41, 43, 21,27,]
  },],
  fill: {
    opacity: [0.2,0.2,0.2,0.2,0.2],
            gradient: {
                inverseColors: true,
                shade: 'light',
                type: "vertical",
                opacityFrom: 0.5,
                opacityTo: 0.5,
                stops: [0, 100, 100, 100]
            }
  },
  labels: ['01/01/2003', '02/01/2003','03/01/2003','04/01/2003','05/01/2003','06/01/2003','07/01/2003','08/01/2003','09/01/2003','10/01/2003','11/01/2003','12/01/2003', '01/01/2004','02/01/2004','03/01/2004','04/01/2004','05/01/2004','06/01/2004','07/01/2004','08/01/2004','9/01/2004','10/01/2004'],
  markers: {
    size: 0
  },
  xaxis: {
    type:'datetime'
  },
  yaxis: {
    min: 0
  },
  tooltip: {
    shared: true,
    intersect: false,
    y: {
      formatter: function (y) {
        if(typeof y !== "undefined") {
          return  y.toFixed(0) + " views";
        }
        return y;
        
      }
    }
  },
  legend: {
    labels: {
      useSeriesColors: true
    },
    markers: {
      customHTML: [
        function() {
          return ''
        }, function() {
          return ''
        }, function() {
          return ''
        }, function() {
          return ''
        }, function() {
          return ''
        }
      ]
    }
  }
}

var chart_1 = new ApexCharts(
  document.querySelector("#dashboardGraph_1"),
  options
);

chart_1.render();
