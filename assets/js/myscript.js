$(function() {
	$('.tombolTambahGuru').click(function() {
		$('#formModalLabelGuru').html('Tambah Data Guru');
		$('.modal-footer button[type=submit]').html('Tambah');
	});

	$('.tombolUbahGuru').click(function() {
		$('#formModalLabelGuru').html('Ubah Data Guru');
		$('.modal-footer button[type=submit]').html('Ubah');
		$('.modal-body form').attr('action', 'http://localhost/Pembayaran-SPP-ci3/admin/guru/ubahGuru');

		const id = $(this).data('id');
		console.log(id);
		$.ajax({
			url: 'http://localhost/Pembayaran-SPP-ci3/admin/guru/getguruid',
			data: {id: id},
			dataType: 'json',
			method: 'post',
			success: function(data) {
				console.log(data);
				$('#id_guru').val(data.id_guru);
				$('#nama').val(data.nama_guru);
			}
		});
	});


});