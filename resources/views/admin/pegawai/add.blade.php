@extends('layout.backend.app',[
    'title' => 'Daftar Pegawai',
    'pageTitle' =>'Daftar Pegawai',
])

@push('css')

@endpush

@section('content')
<div class="notify"></div>

<div class="card">
    <div class="card-header">
        <!-- Button trigger modal -->
        <a href="{{route('pegawai.index')}}" class="btn btn-sm btn-primary">
         <i class="fa fa-arrow-left "></i> Back To List
        </a>
    </div>
        <div class="card-body">
            <form id="addPegawai" enctype="multipart/form-data">
            <input type="hidden" name="id" id="id">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nip">NIP (Non Induk Pegawai)</label>
                                <input type="text" class="form-control" id="nip" placeholder="No Induk Pegawai">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmlengkap">Nama Lengkap</label>
                                <input type="text" class="form-control" id="nmlengkap" placeholder="Nama Lengkap">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Nama Panggilan</label>
                                <input type="text" class="form-control" id="nmpanggilan" placeholder="Nama Panggilan">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Jenis Kelamin</label>
                                <select name="jenis_kelamin" id="jenis_kelamin" class="form-control select2">
                                <option value="null"> --Jenis Kelamin-- </option>
                                   <option value="laki-laki">Laki-laki</option>
                                   <option value="perempuan">Perempuan</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Tempat Lahir</label>
                                <input type="text" class="form-control" name="tempat_lahir" id="tempat_lahir" placeholder="Tempat Lahir">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Tanggal Lahir</label>
                                <input type="text" class="form-control" name="tgl_lahir" id="tgl_lahir" placeholder="Tanggal Lahir">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Agama</label>
                                <select name="agama" id="agama" class="form-control select2">
                                <option value="null"> --Pilih Agama-- </option>
                                    @foreach($ls_agama as $key => $val)
                                    <option  value="<?php echo $val->id;?>"><?php echo $val->agama;?></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Alamat</label>
                                <textarea class="form-control" name="alamat" id="alamat" cols="30" rows="3" placeholder="Alamat Rumah"></textarea>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Departmens</label>
                                <select name="dept" id="dept" class="form-control select2">
                                <option value="null"> --Pilih Department-- </option>
                                    @foreach($ls_dept as $key => $val)
                                    <option  value="<?php echo $val->id;?>"><?php echo $val->nm_departemen;?></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Posisi</label>
                                <select name="posisi" id="posisi" class="form-control select2">
                                    <option value="null"> --Pilih Posisi-- </option>
                                    @foreach($ls_posisi as $key => $val)
                                    <option  value="<?php echo $val->id;?>"><?php echo $val->posisi;?></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Lokasi</label>
                                <select name="lokasi" id="lokasi" class="form-control select2">
                                    <option value="null"> --Pilih Lokasi-- </option>
                                    @foreach($ls_lokasi as $key => $val)
                                    <option  value="<?php echo $val->id;?>"><?php echo $val->lokasi;?></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Status Pegawai</label>
                                <select name="status_pegawai" id="status_pegawai" class="form-control select2">
                                    <option value="null"> --Pilih Status Pegawai-- </option>
                                    @foreach($ls_status as $key => $val)
                                    <option  value="<?php echo $val->id;?>"><?php echo $val->status_pegawai;?></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">No Hp/Tlpn</label>
                                <input type="text" class="form-control" name="nohp" id="nohp" placeholder="No HP">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-10">
                                <label for="nmpanggilan">Pengalaman Kerja</label>
                                <textarea class="form-control" name="pengalaman" id="pengalaman" cols="30" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label for="input-data">Foto</label>
                                    <input type="file" data-height="150" name="foto" id="foto"
                                    class="dropify" data-default-file="{{ asset('image') }}/images.jpg" />
                                    <!-- <input type="file" id="file"> -->
                            </div>
                        </div>
                    </div>
                
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <button type="submit" class="btn btn-primary" id="btn-save" value="create"> <i class="fa fa-save"></i> save</button>
                    </div>
                </div>
               
               
                
            </form>
        </div>
</div>




@stop

@push('js')
<script src="{{ asset('js') }}/add_pegawai.js"></script>

@endpush