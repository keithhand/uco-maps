$(document).on('turbolinks:load', function() {
  var selectedStartBuilding;
  $("select#startPos").change(function() {
    $("select#endPos").show();
    $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").show();
    selectedStartBuilding = $(this).children("option:selected").index();
    $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").hide();
    $("select#endPos").val(0);
  })

  if ($("#directions").find("div")[0])
    $("#directions").find("div")[0].remove();
});