$(document).ready(function() {
  var selectedStartBuilding;
  $("select#startPos").change(function() {
    if (selectedStartBuilding)
      $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").show();
    selectedStartBuilding = $(this).children("option:selected").index();
    $("select#endPos").children("option:eq(" + selectedStartBuilding + ")").hide();
    $("select#endPos").val(0);
  })
});