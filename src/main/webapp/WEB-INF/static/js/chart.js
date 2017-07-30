 $(document).ready(function() {
 
 'use strict'; 

           Morris.Area({
            element: 'hero-area',
            data: [{
                period: '1',
                iphone: 2250
            }, {
                period: '2',
                iphone: 4550
            }, {
                period: '3',
                iphone: 7750
            }, {
                period: '4',
                iphone: 5750
            }, {
                period: '5',
                iphone: 10000
            }, {
                period: '6',
                iphone: 9000
            }, {
                period: '7',
                iphone: 8000
            }, {
                period: '8',
                iphone: 7000
            }],
            xkey: 'period',
            ykeys: ['iphone'],
            labels: ['iPhone'],
            hideHover: 'auto',
            lineWidth: 2,
            pointSize: 10,
            lineColors: ['#72d0eb'],
           
            fillOpacity: 1.0,
            smooth: true
		//pointFillColors: ['#00ff00']
        });
      });
