$(document).on('turbolinks:load', function() {
  var selectedStartBuilding;
  $("select#startPos").change(function() {
    $("select#endPos").show();
    $("input").hide();
    $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").show();
    selectedStartBuilding = $(this).children("option:selected").index();
    $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").hide();
    $("select#endPos").val(0);
  })

  $("select#endPos").change(function() {
    $("input").show();
  })

  if ($("#directions").find("div")[0])
    $("#directions").find("div")[0].remove();
});