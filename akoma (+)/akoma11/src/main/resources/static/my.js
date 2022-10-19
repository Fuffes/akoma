$('#is_doc').change(function() {
    if(this.checked != true){
        $("#conditional_part").show();
    }
    else{
        $("#conditional_part").hide();
    }
});