$(document).ready(function() {
  getLists();

});

var getLists = function() {
  $.getJSON('/lists', function(data) {
    var beer_lists = [];
    $.each(data, function(key,val) {
      $("#lists").append("<a href='#' class='list_name' data-list-id='" + val.id + "'>" +
  val.name  + "</a><br />");
    });
    $(".list_name").on("click", function() {
      getBeers($(this).data("list-id"));
    });
  });
}

var getBeers = function(id) {
  $.getJSON('/lists/' + id, function(data) {
    var beers = [];
    $("#beers").html('');
    $("#beer").html('');
    $.each(data, function(key,val) {
      $("#beers").append("<a href='#' class='beer_name' data-list-id='" + val.id + "'>" +
  val.name  + "</a><br />");
    });
    $(".beer_name").on("click", function() {
      getBeerDetails($(this).data("list-id"));
    });
  });
};

var getBeerDetails = function(id) {
  $.getJSON('/beers/' + id, function(data) {
    $("#beer").html('');

    $("#beer").append("Name: " + data.beer_name + "<br />")
    $("#beer").append("Reviews Rating: " + data.reviewers_rating + "<br />")
    $("#beer").append("Brothers Rating: " + data.brothers_rating);

  });
};