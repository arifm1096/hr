$(document).ready(function() {
    $('.select2').select2();

    $('.dropify').dropify({
        messages: {
            default: 'Pilih Foto untuk Di Upload',
            replace: 'Silahkan Pilih Foto',
            remove:  'Hapus Foto'
        }
      });

    $('#tgl_lahir').datepicker({
        format: "dd-mm-yyyy",
        autoclose: true
    });
      
});

// $('body').on('submit', '#addPegawai', function (e) {
 
//     e.preventDefault();

//     // var actionType = $('#btn-save').val();
//     $('#btn-save').html('Sending..');

//     var formData = new FormData(this);

//     $.ajax({
//         type:'POST',
//         url: SITEURL + "product-list/store",
//         data: formData,
//         cache:false,
//         contentType: false,
//         processData: false,
//         success: function(data) => {
             
//             $('#addPegawai').trigger("reset");
//             $('#ajax-product-modal').modal('hide');
//             $('#btn-save').html('Save Changes');
//             var oTable = $('#laravel_datatable').dataTable();
//             oTable.fnDraw(false);
//         },
        
//     });
// });