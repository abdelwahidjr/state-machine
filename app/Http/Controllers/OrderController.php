<?php

namespace App\Http\Controllers;

use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
  
    public function index()
    {
        
        $orders = Order::all();
        return view('orders.index', compact('orders'));
    }

    
    public function create()
    {
    
    }

    
    public function store(Request $request)
    {
    }

    public function show(Order $order)
    {
        
        $orderSM = \StateMachine::get($order, 'orders2Dir');
        dd($orderSM);
        return view('orders.show', compact(['orderSM', 'order']));
    }

    
    public function edit(Order $order)
    {
    
    }

   
    public function update(Request $request, Order $order)
    {
    
    }

   
    public function destroy(Order $order)
    {
    
    }
   
    public function apply_transition(Request $request, Order $order)
    {
        
        $orderSM = \StateMachine::get($order, 'orders2Dir');
        $orderSM->apply($request->transition);
        $order->save();
        return redirect()->back();

    }


}
