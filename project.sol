Transaction Hash :-  0xdfc25f20f716627682af0b1862b6907ea3c774c5590393556629b6c794f6acdc

Address from :- 0x388eaab7d37f6bb89880743147cfeb88b1893f55

Ropsten Transaction Link :-
https://ropsten.etherscan.io/tx/0xdfc25f20f716627682af0b1862b6907ea3c774c5590393556629b6c794f6acdc

pragma solidity >=0.4.17 <0.7.0;

contract Report
{
    string name;
    int rollno;
    int batch;
    int mark1;int mark2; int mark3;int mark4;int result;
    string status;
    
   

    function Report(string newname,int newroll,int newbatch,int newmark1,int newmark2,int newmark3,int newmark4) public
    {
        name = newname;
        rollno = newroll;
        batch = newbatch;
        mark1=newmark1;
        mark2=newmark2;
        mark3=newmark3;
        mark4=newmark4;
        
         result = mark1 + mark2 + mark3 + mark4;
         result = result * 100/400;
         
         if( result < 33)
        {
            status = "FAIL";
        }
        else if(result >= 33)
        {
            status = "PASS";
        }
         
        
    }
    
    function getDetails() public view returns(string Student_Name,int Roll_No,int Batch,int mark_of_subject_1,int mark_of_subject_2,int mark_of_subject_3,int mark_of_subject_4,int Percentage,string Status)
    {
        
        
        return(name,rollno,batch,mark1,mark2,mark3,mark4,result,status);
        
        
    }
    
}
