var qtool = require("../lib/qtool");

function _bubbleSort(data) {
  this.data = data;
  this.preview = function(data) {
    qtool.dataPreview.preview(data);
  };
  this.sort = function() {
    var length = this.data.length;
    for(var i = 1; i < length; i++) {
      for(var j = 0; j < length - 1; j++) {
        var temp = this.data[j];
        if(this.data[j] > this.data[j+1]){
          this.data[j] = this.data[j+1];
          this.data[j+1] = temp;
        };
      };
    };
    console.log("::BubbleSort::");
    qtool.dataPreview.preview(this.data);
  };
};

var data = qtool.dataCreator.create(10,100);
var bubleSort = new _bubbleSort(data);
bubleSort.preview(data);
bubleSort.sort();
