<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Attendence;
class AttendenceController extends Controller
{
      /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function TakeAttendence()
    {
    	$employee=DB::table('employees')->get();
    	return view('take_attendence', compact('employee'));
    }

    public function InsertAttendence(Request $request)
    {

        $date=$request->att_date;
        $att_date=DB::table('attendences')->where('att_date',$date)->first();
        if ($att_date) {
             $notification=array(
                 'messege'=>'Today Attendence Already Taken ',
                 'alert-type'=>'error'
                  );
                 return Redirect()->back()->with($notification);
        }else{
           
           foreach ($request->user_id as $id) {
            $data[]=[
                "user_id"=>$id,
                "attendence"=>$request->attendence[$id],
                "att_date" =>$request->att_date,
                "att_year" =>$request->att_year,
                "month" =>$request->month,
                "edit_date" =>date("d_m_y")

            ];
        }
        $att=DB::table('attendences')->insert($data);
         if ($att) {
                 $notification=array(
                 'messege'=>'Successfully Attendence Taken ',
                 'alert-type'=>'success'
                  );
                return Redirect()->back()->with($notification);                      
             }else{
              $notification=array(
                 'messege'=>'error ',
                 'alert-type'=>'success'
                  );
                 return Redirect()->back()->with($notification);
             }     
        }

    }

    public function AllAttendence()
    {
    	$all_att=DB::table('attendences')->select('edit_date')->groupBy('edit_date')->get();

        return view('all_attendence', compact('all_att'));
    }

    public function EditAttednece($edit_date)
    {
        $date=DB::table('attendences')->where('edit_date',$edit_date)->first();

        $data=DB::table('attendences')->join('employees','attendences.user_id','employees.id')->select('employees.name','employees.photo','attendences.*')->where('edit_date',$edit_date)->get();
         return view('edit_attendence', compact('data','date'));
      
    }

    public function UpdateAttendence(Request $request)
    {

        foreach ($request->id as $id) {
            $data=[
                "attendence"=>$request->attendence[$id],
                "att_date" =>$request->att_date,
                "att_year" =>$request->att_year,
                "month" =>$request->month
            ];

            $attendence= Attendence::where(['att_date' =>$request->att_date, 'id'=>$id])->first();
            $attendence->update($data);
        }
         if ($attendence) {
                 $notification=array(
                 'messege'=>'Successfully Attendence Updated ',
                 'alert-type'=>'success'
                  );
                return Redirect()->route('all.attendence')->with($notification);                      
             }else{
              $notification=array(
                 'messege'=>'error ',
                 'alert-type'=>'success'
                  );
                 return Redirect()->back()->with($notification);
             }    

    }

    public function ViewAttednece($edit_date)
    {

        $date=DB::table('attendences')->where('edit_date',$edit_date)->first();
        $data=DB::table('attendences')->join('employees','attendences.user_id','employees.id')->select('employees.name','employees.photo','attendences.*')->where('edit_date',$edit_date)->get();
         return view('view_attendence', compact('data','date'));
    }
  
}
