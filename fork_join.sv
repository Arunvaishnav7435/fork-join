//SV Topics : Threads
//Problem statement : to create two threads

//======================================

module test;
  initial begin
    fork			//fork join to create two threads
    	begin
      		$display($time, " first thread\n");	// this is first thread
      		#2;
    	end
    
    	begin
      		$display($time, " second thread\n"); 	//this is second thread
      		#6;
    	end
  	join						//both threads are executed together
    $display($time, " after end of threads at 6\n"); 	//this is executed after all the threads are complete
  end
endmodule
