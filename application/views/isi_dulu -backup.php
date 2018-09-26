<div style="margin-top:10px;">
	<form action="#" method="post" class="form-check">
		<div class="row">
			<div class="col-md-12">			
				<div class="form-group">
					<span><small>Nama Pasien :</small></span>
					<input class="form-control requiered" name="nama_pasien" placeholder="Nama Pasien" type="text" autocomplete="off">
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">			
				<div class="form-group">
					<span><small>Jenis Kelamin :</small></span>
					<select name="jenis_kelamin" class="form-control requiered" autocomplete="off">
						<option value="" selected>--Pilih Salah Satu--</option>
						<option value="L">Laki - laki</option>
						<option value="P">Perempuan</option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<span><small>Alamat :</small></span>
					<textarea class="form-control requiered" name="alamat" placeholder="Alamat" style="resize:none;" type="text"></textarea>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="form-group">
					<button type="submit" name="submit" class="btn btn-primary form-control" value="submit">Mulai Konsultasi</button>
				</div>
			</div>
		</div>
	</form>
</div>
<script type="text/javascript">
$("form.form-check").submit(function(e) {
	e.preventDefault();
	var inputs = $(this).find('.requiered');
	var success = 0;
	for (var i = 0; i < inputs.length; i++) {
		var _in = $(inputs[i]);
		var _val = _in.val();
		if (_val == '') {
			_in.focus();
			break;
		}
		else
		{
			success = success + 1;
		}
	}
	if (success >= inputs.length) {
		var $input = $("<input type='hidden' name='session_id_valid requiered' value='<?php echo @$session_id_valid;?>'/>")
		$(this).append($input);
		$(this).unbind();

	};
});
</script>