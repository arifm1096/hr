<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

use DataTables;

use App\Models\Pegawai;


class PegawaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            // $data = Transaksi::select('*')->orderBy('created_at','DESC');
     
            $data = DB::table('pegawais')
            ->join('lokasis','lokasis.id','=','pegawais.lokasi_id')
            ->join('posisis','posisis.id','=','pegawais.posisi_id')
            ->join('departemens','departemens.id','=','pegawais.departemen_id')
            ->join('status_pegawais','status_pegawais.id','=','pegawais.statuspegawai_id')
            ->select('pegawais.*','lokasis.*','departemens.*','status_pegawais.*','posisis.*')
            ->get();
            
            return DataTables::of($data)
            ->addIndexColumn()
            ->editColumn('foto', function($row){
                if ($row->foto == "foto")
                    return '<span class="badge badge-success">'.$row->foto.'</span>';
                if ($row->jenis_rekening == "foto2")
                    return '<span class="badge badge-danger">'.$row->foto.'</span>';
            })  
            ->addColumn('action', function($row){
                $btn = '<div class="row"><a href="javascript:void(0)" id="'.$row->id.'" class="btn btn-primary btn-sm ml-2 btn-edit">Show</a>';
                $btn .= '<a href="javascript:void(0)" id="'.$row->id.'" class="btn btn-primary btn-sm ml-2 btn-edit">Edit</a>';
                $btn .= '<a href="javascript:void(0)" id="'.$row->id.'" class="btn btn-danger btn-sm ml-2 btn-delete">Delete</a></div>';

                return $btn;
            })
            ->escapeColumns([])
            ->make(true);

        }
        return view('admin.pegawai.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {   
        $ls_dept = DB::table('departemens')
                        ->select('id', 'nm_departemen')
                        ->get();
        $ls_posisi = DB::table('posisis')
                        ->select('id', 'posisi')
                        ->get();
        $ls_lokasi = DB::table('lokasis')
                        ->select('id', 'lokasi')
                        ->get();
        $ls_status = DB::table('status_pegawais')
                        ->select('id', 'status_pegawai')
                        ->get();
        $ls_agama = DB::table('agamas')
                        ->select('id', 'agama')
                        ->get();

        return view('admin.pegawai.add',compact('ls_dept','ls_posisi','ls_lokasi','ls_status','ls_agama')
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        request()->validate([
            'image' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
       ]);
     
        $id_peg = $request->id;
     
        $details = [
                        'nip' => $request->nip, 
                        'nm_lengakap' => $request->nmlengkap, 
                        'nm_panggilan' => $request->nmpanggilan,
                        'statuspegawai_id'=>$request->status,
                        'department_id'=>$request->dept,
                        'tempat_lahir'=>$request->tempat_lahir,
                        'tgl_lahir'=>$request->tgl_lahir,
                        'jenis_kelamin'=>$request->jenis_kelamin,
                        'alamat'=>$request->alamat,
                        'no_hp'=>$request->nohp,
                        'Pengalaman_kerja'=>$request->pengalaman,
                        'agama_id'=>$request->agama,
                        'create_at'=>date('Y-m-d')


                    ];
     
        if ($files = $request->file('foto')) {
            
           //delete old file
        //    \File::delete('public/image/'.$request->hidden_image);
        $request->validate([
            'foto' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
          ]);
           //insert new file
           $destinationPath = 'public/product/'; // upload path
           $profileImage = date('YmdHis') . "." . $files->getClientOriginalExtension();
           $files->move($destinationPath, $profileImage);
           $details['image'] = "$profileImage";
        }
         
        $pegawai   =   Pegawai::updateOrCreate(['id' => $id_peg], $details); 
        
            if($pegawai){
                return response()->json(array('status'=>1,'message'=>'Data Berhasil Disimpan'));
            }else{
                return response()->json(array('status'=>0,'message'=>'Data Berhasil Disimpan'));
            }
           
       
               
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
