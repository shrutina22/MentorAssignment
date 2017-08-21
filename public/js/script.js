
$(document).ready(function(){


console.log('hii');
          $('#example').DataTable( {
                  "ajax":{
                          "url" : "http://localhost:8100/data",
                          "dataSrc" :""
                        } ,
                  "sAjaxDataProp": "data",
                  "processing": true,
                  "bserverSide": true,
                  "bSort": true,
                   "bPaginate": true,
                   "bLengthChange": true,
                   "bProcessing": true,
                     "bFilter": true,
                   "table": "#example",
                  columns: [
                      { data: "name" },
                      { data: "place" },
                      { data: "animal" },
                      { data: "thing" },

                      {
                          data: "id",
                          className: "center",
                        'render': function (data, type, row)
                            {

                              var id = row.id;
                              return '<a href="http://localhost:8100/deletee/'+ row.id + '"><button id="'+ row.id + '" class=" del btn btn-danger"  ><span class=" glyphicon glyphicon-trash"></span></button></a>'
                            }
                       }
                    ]
              });

  });