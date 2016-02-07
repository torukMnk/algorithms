exports.dataCreator = {
  create: function(amount, max_value) {
    var data = [];
    for(var index = 0; index < amount; index++) {
      data.push(Math.floor(Math.random() * max_value));
    }
    return data;
  }
};

exports.dataPreview = {
  preview: function(data){
    var preview = [];
    for(var index in data){
      preview.push([index, data[index]]);
    }
    formatPreview(preview);
  }
};

function formatPreview(preview) {
  for(var index in preview) {
    console.log("Index: " + preview[index][0] + " Value: " + preview[index][1] );
  }
};
