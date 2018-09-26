<div style="margin-top:10px;padding:40px !important;">
	<div class="row">
		<div class="col-md-12">
				<h3>Detail Rekaman Konsultasi</h3>
				<p>Pasien : <b><?php echo @$data->nama_pasien;?></b></p>
				<p>Jenis Kelamin : <b><?php echo @$data->jenis_kelamin;?></b></p>
				<p>Alamat : <b><?php echo @$data->alamat;?></b></p>
				<p>Diagnosa Penyakit : <b><?php echo @$data->nm_penyakit;?> <small><i>(<?php echo @$data->nm_latin;?>)</i></small></b></p>
				<p><b>Definisi :</b> <br/><?php echo @$data->definisi;?></p>
				<p><b>Solusi :</b> <br/><?php echo @$data->solusi;?></p>
		
				<p><b>Gejala :</b>
					<ul>
						<?php
						foreach ($gejala as $value) {
							echo "<li>{$value->nm_gejala}</li>";
						}
						?>
					</ul>
				</p>
				
				<p><b>Cara Penyembuhan :</b><br/>
				<?php echo @$data->solusi;?> </p>
			</div>			
		</div>
	<div class="row">
		<div class="col-md-12 text-center">
			<?php if (!isset($_GET['to_pdf'])) {?>
			<a type="submit" name="submit" class="btn btn-danger" href="<?php echo base_url();?>konsultasi/delete">Kembali</a>
			<a type="submit" name="submit" class="btn btn-primary" href="?to_pdf=true">Download format PDF</a>
			<?php }?>
		</div>
	</div>
</div>